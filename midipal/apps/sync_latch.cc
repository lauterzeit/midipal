// Copyright 2012 Olivier Gillet.
//
// Author: Olivier Gillet (ol.gillet@gmail.com)
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// -----------------------------------------------------------------------------
//
// Clock divider app.

#include "midipal/apps/sync_latch.h"

#include "avrlib/op.h"
#include "avrlib/string.h"
#include "midi/midi.h"

#include "midipal/display.h"
#include "midipal/ui.h"

namespace midipal { namespace apps {

using namespace avrlib;
using namespace midi;

const prog_uint8_t sync_latch_factory_data[2] PROGMEM = {
  4, 8
};


/* static */
uint8_t SyncLatch::num_beats_;

/* static */
uint8_t SyncLatch::beat_division_;

/* static */
uint8_t SyncLatch::step_counter_;

/* static */
uint8_t SyncLatch::beat_counter_;

/* static */
uint8_t SyncLatch::q_step_count_;
    
/* static */
uint8_t SyncLatch::q_beat_count_;

/* static */
uint8_t SyncLatch::mute_byte_count_;
    
/* static */
uint8_t SyncLatch::state_;
    
/* static */
uint8_t SyncLatch::master_state_;


/* static */
const prog_AppInfo SyncLatch::app_info_ PROGMEM = {
  &OnInit, // void (*OnInit)();
  NULL, // void (*OnNoteOn)(uint8_t, uint8_t, uint8_t);
  NULL, // void (*OnNoteOff)(uint8_t, uint8_t, uint8_t);
  NULL, // void (*OnNoteAftertouch)(uint8_t, uint8_t, uint8_t);
  NULL, // void (*OnAftertouch)(uint8_t, uint8_t);
  &OnControlChange, // void (*OnControlChange)(uint8_t, uint8_t, uint8_t);
  NULL, // void (*OnProgramChange)(uint8_t, uint8_t);
  NULL, // void (*OnPitchBend)(uint8_t, uint16_t);
  NULL, // void (*OnSysExByte)(uint8_t);
  &OnSongPosition, // (*OnSongPosition)(uint16_t);    // lauterZEIT
  &OnClock, // void (*OnClock)();
  &OnStart, // void (*OnStart)();
  &OnContinue, // void (*OnContinue)();
  &OnStop, // void (*OnStop)();
  NULL, // uint8_t (*CheckChannel)(uint8_t);
  &OnRawByte, // void (*OnRawByte)(uint8_t);
  NULL, // void (*OnRawMidiData)(uint8_t, uint8_t*, uint8_t, uint8_t);
  NULL, // void (*OnInternalClockTick)();
  NULL, // void (*OnInternalClockStep)();
  NULL, // uint8_t (*OnIncrement)(int8_t);
  &OnClick, // uint8_t (*OnClick)();
  NULL, // uint8_t (*OnPot)(uint8_t, uint8_t);
  &OnRedraw, // uint8_t (*OnRedraw)();
  NULL, // void (*OnIdle)();
  NULL, // void (*SetParameter)(uint8_t, uint8_t);
  NULL, // uint8_t (*GetParameter)(uint8_t);
  NULL, // uint8_t (*CheckPageStatus)(uint8_t);
  2, // settings_size
  SETTINGS_SYNC_LATCH, // settings_offset
  &num_beats_, // settings_data
  sync_latch_factory_data, // factory_data
  STR_RES_SYNCLTCH, // app_name
  true
};  
  
/* static */
void SyncLatch::OnInit() {
  ui.AddPage(STR_RES_NUM, UNIT_INTEGER, 1, 32);
  ui.AddPage(STR_RES_DEN, STR_RES_2_1, 8, 13);  //  orig. factory limit was '16' = /96 but now limit to /24
  // Add two dummy pages. They won't be shown on screen since Redraw is
  // overridden, but this allows the default navigation handling to be used.
  ui.AddPage(0, UNIT_INTEGER, 1, 1);
  ui.AddPage(0, UNIT_INTEGER, 1, 1);

  state_ = STATE_IDLE;  // lauterZEIT
  master_state_ = STATE_IDLE;  // lauterZEIT
  mute_byte_count_ = 0;
}

/* static */
void SyncLatch::OnRawByte(uint8_t byte) {
    if (byte == 0xf8) {
        if ( (state_ & STATE_RUNNING) || !(master_state_ & STATE_STRICT) ){
            app.SendNow(0xf8);  // quickly pass along clock!
        }
    }
    else if ( ((byte & 0xf3) != 0xf2) && (byte != 0xfc) && (byte != 0xfb) && !mute_byte_count_ ) {
        app.SendNow(byte);  // quickly pass along everything except Start, Stop, Continue and SPP
    }
    else if (byte == 0xf2) {
        mute_byte_count_ = 2;  // mute next two SPP bytes
    }
    else if (mute_byte_count_) {
        --mute_byte_count_;
    }
}

/* static */
void SyncLatch::OnSongPosition(uint16_t spp) {
    uint8_t num_ticks_per_beat = ResourcesManager::Lookup<uint8_t, uint8_t>(
        midi_clock_tick_per_step, beat_division_);
    
   // p_ticks = spp * 6/2;
   // q_beat_counter_  = p_ticks / (num_ticks_per_beat/2)
   // q_beat_counter_ %= num_beats_;
   // q_step_counter_  = (p_ticks % (num_ticks_per_beat/2));
    
    spp += (spp << 1);  // multiply by 3, result guaranteed to be a 16bit unsigned value
    q_beat_count_ = (uint8_t)( (spp / (num_ticks_per_beat >> 1)) % num_beats_ );
    q_step_count_ = (uint8_t)( spp % (num_ticks_per_beat >> 1) ) << 1;

    state_ |= STATE_CUE;             // set cue signal
}
    
/* static */
void SyncLatch::OnContinue() {
    master_state_ |= STATE_RUNNING;
    
    if ( (beat_counter_ == q_beat_count_) && (step_counter_ == q_step_count_) ) {
        // probably a Continue without any clock movement since Stop
        state_ &= ~STATE_CUE;   // override Cue
        // app.SendNow(0xfe);  // debug
    }
    else {
        beat_counter_ = q_beat_count_;  // reset clock state
        step_counter_ = q_step_count_;
    }
    
    if ((beat_counter_ != 0) || (step_counter_ != 0)) {
        // not at pattern boundary
        if ( state_ & STATE_CUE ) {
            state_ &= ~STATE_CUE;    // clear Cue singal
            state_ ^= STATE_ARMED;   // toggle Armed signal
        }
        else if ( !(state_ & STATE_ARMED) ) {
            app.SendNow(0xfb);       // CONTINUE
            state_ = STATE_RUNNING;  // clear Cue singal
        }
        else {
            state_ = STATE_IDLE;     // clear all singals
        }
    }
    else {
        // both counters are at zero - on pattern boundary
        if ( !(state_ & STATE_ARMED) ) {
            app.SendNow(0xfa);       // START
            state_ = STATE_RUNNING;  // clear Cue singal
        }
        else {
            state_ = STATE_IDLE;     // clear all singals
        }
    }
}

/* static */
void SyncLatch::OnStart() {
    master_state_ |= STATE_RUNNING;
    beat_counter_ = 0;
    step_counter_ = 0;
    
    q_beat_count_ = 0;
    q_step_count_ = 0;

    if ( !(state_ & STATE_ARMED) ) {
        app.SendNow(0xfa);           // START
        state_ = STATE_RUNNING;      // clear Cue and Armed signals
    }
    else {
        state_ = STATE_IDLE;         // clear all signals
    }
}

/* static */
void SyncLatch::OnStop() {
    app.SendNow(0xfc);               // STOP

    if (master_state_ & STATE_RUNNING) {
        if (state_ & STATE_RUNNING) {
            q_step_count_ = step_counter_;  // save this clock state for Continue
            q_beat_count_ = beat_counter_;
        }
        state_ = STATE_IDLE;  // alway clear Armed upon first Master Stop message!!!
    }
    else {
        // if here, we have another Stop message (2nd 3rd etc)
        // as some devices send extra Stops before SPP
        state_ &= STATE_ARMED;       // clear all signals except Armed
    }
    
    master_state_ &= ~STATE_RUNNING; // clear Master Running signal
}

/* static */
void SyncLatch::OnClock() {
  ++step_counter_;
  uint8_t num_ticks_per_beat = ResourcesManager::Lookup<uint8_t, uint8_t>(
      midi_clock_tick_per_step, beat_division_);
  if (step_counter_ >= num_ticks_per_beat) {
    step_counter_ = 0;
    ++beat_counter_;
  }
  if (beat_counter_ >= num_beats_) {
    beat_counter_ = 0;
  }
  if ((master_state_ & STATE_RUNNING)
      && (state_ & STATE_ARMED)
      && (step_counter_ == 0)
      && (beat_counter_ == 0) ) {
    if (state_ & STATE_RUNNING) {
      app.SendNow(0xfc);       // STOP
      state_ = STATE_IDLE;     // clear Cue and Running signals
      q_step_count_ = step_counter_;  // save this clock state for Continue
      q_beat_count_ = beat_counter_;
    }
    else {
      app.SendNow(0xfa);       // START
      state_ = STATE_RUNNING;  // clear Cue and Armed signals
    }
  }
}

/* static */
uint8_t SyncLatch::OnClick() {
  if (ui.page() == 3) {
    beat_counter_ = 0;
    step_counter_ = 0;
  } else if (ui.page() == 2) {
    state_ ^= STATE_ARMED;  // toggle signal
  } else {
    return 0;
  }
  return 1;
}

/* static */
void SyncLatch::OnControlChange(uint8_t channel, uint8_t cc, uint8_t value) {
    // hard-coded to MIDI channel 16 for now
    if ( (channel == 0x0f) && (value & 0x40) ) {
        if ( cc == kHoldPedal ) {
          state_ ^= STATE_ARMED;  // toggle signal
        }
        else if ( cc == kHold2Pedal ) { 
          master_state_ ^= STATE_STRICT;  // toggle signal
        }
    }
}

/* static */
uint8_t SyncLatch::OnRedraw() {
  if (ui.page() == 2) {
    memset(line_buffer, ' ', kLcdWidth);
    UnsafeItoa(beat_counter_ + 1, 2, &line_buffer[1]);
    PadRight(&line_buffer[1], 2, '0');
    UnsafeItoa(step_counter_, 2, &line_buffer[4]);
    PadRight(&line_buffer[4], 2, '0');
      if (master_state_ & STATE_RUNNING) {
          line_buffer[3] = ':';
      }
      else {
          line_buffer[3] = ';';
      }
    
      if (state_ & STATE_ARMED) {
          line_buffer[0] = '[';
          line_buffer[6] = ']';
      }
      if (state_ & STATE_RUNNING) {
          line_buffer[7] = '>';
      }
      else {
          line_buffer[7] = (master_state_ & STATE_STRICT) ? '*' : 0xa5;
      }
      display.Print(0, line_buffer);
  } else if (ui.page() == 3) {
    ui.PrintString(STR_RES_RESET);
  } else {
    return 0;
  }
  return 1;
}

} }  // namespace midipal::apps
