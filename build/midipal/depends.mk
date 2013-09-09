build/midipal/adc.o: avrlib/adc.cc avrlib/adc.h avrlib/avrlib.h \
  avrlib/base.h avrlib/size_to_type.h
build/midipal/random.o: avrlib/random.cc avrlib/random.h avrlib/base.h
build/midipal/serial.o: avrlib/serial.cc avrlib/serial.h avrlib/avrlib.h \
  avrlib/base.h avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h \
  avrlib/ring_buffer.h
build/midipal/string.o: avrlib/string.cc avrlib/string.h avrlib/base.h
build/midipal/time.o: avrlib/time.cc avrlib/time.h avrlib/base.h \
  avrlib/timer.h avrlib/avrlib.h avrlib/size_to_type.h
build/midipal/i2c.o: avrlib/i2c/i2c.cc avrlib/i2c/i2c.h avrlib/gpio.h \
  avrlib/avrlib.h avrlib/base.h avrlib/size_to_type.h avrlib/timer.h \
  avrlib/ring_buffer.h
build/midipal/wii_nunchuk.o: avrlib/devices/wii_nunchuk.cc \
  avrlib/devices/wii_nunchuk.h avrlib/i2c/i2c.h avrlib/gpio.h \
  avrlib/avrlib.h avrlib/base.h avrlib/size_to_type.h avrlib/timer.h \
  avrlib/ring_buffer.h
build/midipal/app.o: midipal/app.cc midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h avrlib/serial.h \
  avrlib/avrlib.h avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h \
  avrlib/ring_buffer.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/op.h \
  avrlib/time.h avrlib/devices/hd44780_lcd.h avrlib/software_serial.h \
  midipal/hardware_config.h avrlib/parallel_io.h \
  midipal/event_scheduler.h midipal/midi_handler.h midi/midi.h \
  midipal/sysex_handler.h midipal/apps/app_selector.h \
  midipal/apps/arpeggiator.h midipal/apps/bpm_meter.h \
  midipal/apps/cc_knob.h midipal/apps/chord_memory.h \
  midipal/apps/clock_divider.h midipal/apps/clock_source.h \
  midipal/apps/clock_source_hd.h midipal/apps/clock_source_live.h \
  midipal/apps/combiner.h midipal/note_map.h midipal/apps/controller.h \
  midipal/apps/delay.h midipal/apps/dispatcher.h \
  midipal/apps/drum_pattern_generator.h midipal/apps/ear_training_game.h \
  midipal/apps/filter.h midipal/apps/generic_filter.h midipal/apps/lfo.h \
  midipal/apps/monitor.h midipal/apps/poly_sequencer.h \
  midipal/apps/randomizer.h midipal/apps/scale_processor.h \
  midipal/apps/sequencer.h midipal/apps/sh_sequencer.h \
  midipal/apps/sync_latch.h midipal/apps/settings.h \
  midipal/apps/splitter.h midipal/apps/tanpura.h
build/midipal/clock.o: midipal/clock.cc midipal/clock.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h
build/midipal/display.o: midipal/display.cc midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/base.h avrlib/log2.h \
  avrlib/op.h avrlib/time.h avrlib/devices/hd44780_lcd.h \
  avrlib/software_serial.h avrlib/avrlib.h avrlib/size_to_type.h \
  avrlib/gpio.h avrlib/timer.h avrlib/ring_buffer.h \
  avrlib/resources_manager.h midipal/hardware_config.h \
  avrlib/parallel_io.h avrlib/serial.h
build/midipal/event_scheduler.o: midipal/event_scheduler.cc \
  midipal/event_scheduler.h avrlib/base.h
build/midipal/midipal.o: midipal/midipal.cc avrlib/gpio.h avrlib/avrlib.h \
  avrlib/base.h avrlib/size_to_type.h avrlib/timer.h avrlib/boot.h \
  avrlib/adc.h avrlib/time.h avrlib/serial.h avrlib/ring_buffer.h \
  avrlib/watchdog_timer.h midi/midi.h midipal/app.h midipal/resources.h \
  avrlib/resources_manager.h midipal/apps/settings.h midipal/clock.h \
  midipal/event_scheduler.h midipal/midi_handler.h \
  midipal/sysex_handler.h midipal/note_stack.h avrlib/op.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/log2.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h \
  midipal/hardware_config.h avrlib/parallel_io.h
build/midipal/note_stack.o: midipal/note_stack.cc midipal/note_stack.h \
  avrlib/base.h avrlib/op.h
build/midipal/notes.o: midipal/notes.cc midipal/notes.h avrlib/base.h \
  midipal/note_map.h midipal/app.h midipal/resources.h \
  avrlib/resources_manager.h avrlib/op.h
build/midipal/resources.o: midipal/resources.cc midipal/resources.h \
  avrlib/base.h avrlib/resources_manager.h
build/midipal/sysex_handler.o: midipal/sysex_handler.cc \
  midipal/sysex_handler.h avrlib/base.h avrlib/op.h avrlib/serial.h \
  avrlib/avrlib.h avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h \
  avrlib/ring_buffer.h avrlib/time.h avrlib/watchdog_timer.h \
  midipal/app.h midipal/resources.h avrlib/resources_manager.h \
  midipal/apps/generic_filter.h midipal/hardware_config.h \
  avrlib/parallel_io.h midipal/ui.h avrlib/devices/pot_scanner.h \
  avrlib/adc.h avrlib/log2.h avrlib/devices/rotary_encoder.h \
  avrlib/devices/switch.h avrlib/devices/shift_register.h \
  avrlib/ui/event_queue.h
build/midipal/ui.o: midipal/ui.cc midipal/ui.h avrlib/base.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/log2.h avrlib/devices/rotary_encoder.h \
  avrlib/devices/switch.h avrlib/devices/shift_register.h avrlib/gpio.h \
  avrlib/timer.h avrlib/time.h avrlib/ui/event_queue.h avrlib/op.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h avrlib/string.h midipal/app.h midipal/resources.h \
  avrlib/resources_manager.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/devices/hd44780_lcd.h \
  avrlib/software_serial.h midipal/apps/settings.h
build/midipal/voice_allocator.o: midipal/voice_allocator.cc \
  midipal/voice_allocator.h avrlib/base.h
build/midipal/app_selector.o: midipal/apps/app_selector.cc \
  midipal/apps/app_selector.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h avrlib/string.h \
  avrlib/watchdog_timer.h midi/midi.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/op.h \
  avrlib/time.h avrlib/devices/hd44780_lcd.h avrlib/software_serial.h \
  avrlib/avrlib.h avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h midipal/sysex_handler.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/arpeggiator.o: midipal/apps/arpeggiator.cc \
  midipal/apps/arpeggiator.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h avrlib/random.h \
  midi/midi.h midipal/display.h avrlib/devices/buffered_display.h \
  avrlib/log2.h avrlib/op.h avrlib/time.h avrlib/devices/hd44780_lcd.h \
  avrlib/software_serial.h avrlib/avrlib.h avrlib/size_to_type.h \
  avrlib/gpio.h avrlib/timer.h avrlib/ring_buffer.h \
  midipal/hardware_config.h avrlib/parallel_io.h avrlib/serial.h \
  midipal/clock.h midipal/event_scheduler.h midipal/note_stack.h \
  midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/bpm_meter.o: midipal/apps/bpm_meter.cc \
  midipal/apps/bpm_meter.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h avrlib/string.h \
  midipal/clock.h midipal/display.h avrlib/devices/buffered_display.h \
  avrlib/log2.h avrlib/op.h avrlib/time.h avrlib/devices/hd44780_lcd.h \
  avrlib/software_serial.h avrlib/avrlib.h avrlib/size_to_type.h \
  avrlib/gpio.h avrlib/timer.h avrlib/ring_buffer.h \
  midipal/hardware_config.h avrlib/parallel_io.h avrlib/serial.h \
  midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/cc_knob.o: midipal/apps/cc_knob.cc midipal/apps/cc_knob.h \
  midipal/app.h avrlib/base.h midipal/resources.h \
  avrlib/resources_manager.h midi/midi.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/log2.h avrlib/devices/rotary_encoder.h \
  avrlib/devices/switch.h avrlib/devices/shift_register.h avrlib/gpio.h \
  avrlib/timer.h avrlib/time.h avrlib/ui/event_queue.h avrlib/op.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h
build/midipal/chord_memory.o: midipal/apps/chord_memory.cc \
  midipal/apps/chord_memory.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h midi/midi.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/log2.h avrlib/devices/rotary_encoder.h \
  avrlib/devices/switch.h avrlib/devices/shift_register.h avrlib/gpio.h \
  avrlib/timer.h avrlib/time.h avrlib/ui/event_queue.h avrlib/op.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h
build/midipal/clock_divider.o: midipal/apps/clock_divider.cc \
  midipal/apps/clock_divider.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/log2.h avrlib/devices/rotary_encoder.h \
  avrlib/devices/switch.h avrlib/devices/shift_register.h avrlib/gpio.h \
  avrlib/timer.h avrlib/time.h avrlib/ui/event_queue.h avrlib/op.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h
build/midipal/clock_source.o: midipal/apps/clock_source.cc \
  midipal/apps/clock_source.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h avrlib/op.h \
  avrlib/string.h midipal/clock.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/time.h \
  avrlib/devices/hd44780_lcd.h avrlib/software_serial.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h avrlib/ring_buffer.h \
  midipal/hardware_config.h avrlib/parallel_io.h avrlib/serial.h \
  midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/clock_source_hd.o: midipal/apps/clock_source_hd.cc \
  midipal/apps/clock_source_hd.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h avrlib/op.h \
  avrlib/string.h midipal/clock.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/time.h \
  avrlib/devices/hd44780_lcd.h avrlib/software_serial.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h avrlib/ring_buffer.h \
  midipal/hardware_config.h avrlib/parallel_io.h avrlib/serial.h \
  midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/clock_source_live.o: midipal/apps/clock_source_live.cc \
  midipal/apps/clock_source_live.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h avrlib/op.h \
  avrlib/string.h midipal/clock.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/time.h \
  avrlib/devices/hd44780_lcd.h avrlib/software_serial.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h avrlib/ring_buffer.h \
  midipal/hardware_config.h avrlib/parallel_io.h avrlib/serial.h \
  midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/combiner.o: midipal/apps/combiner.cc \
  midipal/apps/combiner.h midipal/app.h avrlib/base.h midipal/resources.h \
  avrlib/resources_manager.h midipal/note_map.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/log2.h avrlib/devices/rotary_encoder.h \
  avrlib/devices/switch.h avrlib/devices/shift_register.h avrlib/gpio.h \
  avrlib/timer.h avrlib/time.h avrlib/ui/event_queue.h avrlib/op.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h
build/midipal/controller.o: midipal/apps/controller.cc \
  midipal/apps/controller.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h midi/midi.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/log2.h avrlib/devices/rotary_encoder.h \
  avrlib/devices/switch.h avrlib/devices/shift_register.h avrlib/gpio.h \
  avrlib/timer.h avrlib/time.h avrlib/ui/event_queue.h avrlib/op.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h
build/midipal/delay.o: midipal/apps/delay.cc midipal/apps/delay.h \
  midipal/app.h avrlib/base.h midipal/resources.h \
  avrlib/resources_manager.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/op.h \
  avrlib/time.h avrlib/devices/hd44780_lcd.h avrlib/software_serial.h \
  avrlib/avrlib.h avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h midipal/clock.h midipal/event_scheduler.h \
  midipal/note_stack.h midipal/notes.h midipal/note_map.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/dispatcher.o: midipal/apps/dispatcher.cc \
  midipal/apps/dispatcher.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h midipal/note_map.h \
  avrlib/random.h midi/midi.h midipal/notes.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/log2.h avrlib/devices/rotary_encoder.h \
  avrlib/devices/switch.h avrlib/devices/shift_register.h avrlib/gpio.h \
  avrlib/timer.h avrlib/time.h avrlib/ui/event_queue.h avrlib/op.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h midipal/voice_allocator.h
build/midipal/drum_pattern_generator.o:  \
 midipal/apps/drum_pattern_generator.cc \
  midipal/apps/drum_pattern_generator.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h midipal/note_stack.h \
  avrlib/op.h midipal/clock.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/time.h \
  avrlib/devices/hd44780_lcd.h avrlib/software_serial.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h avrlib/ring_buffer.h \
  midipal/hardware_config.h avrlib/parallel_io.h avrlib/serial.h \
  midipal/notes.h midipal/note_map.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/ear_training_game.o: midipal/apps/ear_training_game.cc \
  midipal/apps/ear_training_game.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h avrlib/random.h \
  avrlib/string.h midipal/clock.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/op.h \
  avrlib/time.h avrlib/devices/hd44780_lcd.h avrlib/software_serial.h \
  avrlib/avrlib.h avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/filter.o: midipal/apps/filter.cc midipal/apps/filter.h \
  midipal/app.h avrlib/base.h midipal/resources.h \
  avrlib/resources_manager.h midi/midi.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/op.h \
  avrlib/time.h avrlib/devices/hd44780_lcd.h avrlib/software_serial.h \
  avrlib/avrlib.h avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/generic_filter.o: midipal/apps/generic_filter.cc \
  midipal/apps/generic_filter.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h avrlib/random.h \
  avrlib/op.h midi/midi.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/time.h \
  avrlib/devices/hd44780_lcd.h avrlib/software_serial.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h avrlib/ring_buffer.h \
  midipal/hardware_config.h avrlib/parallel_io.h avrlib/serial.h \
  midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/lfo.o: midipal/apps/lfo.cc midipal/apps/lfo.h midipal/app.h \
  avrlib/base.h midipal/resources.h avrlib/resources_manager.h \
  avrlib/op.h avrlib/random.h midipal/clock.h midipal/note_stack.h \
  midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/log2.h avrlib/devices/rotary_encoder.h \
  avrlib/devices/switch.h avrlib/devices/shift_register.h avrlib/gpio.h \
  avrlib/timer.h avrlib/time.h avrlib/ui/event_queue.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h
build/midipal/monitor.o: midipal/apps/monitor.cc midipal/apps/monitor.h \
  midipal/app.h avrlib/base.h midipal/resources.h \
  avrlib/resources_manager.h avrlib/string.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/op.h \
  avrlib/time.h avrlib/devices/hd44780_lcd.h avrlib/software_serial.h \
  avrlib/avrlib.h avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/poly_sequencer.o: midipal/apps/poly_sequencer.cc \
  midipal/apps/poly_sequencer.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h avrlib/op.h \
  avrlib/string.h midipal/clock.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/time.h \
  avrlib/devices/hd44780_lcd.h avrlib/software_serial.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h avrlib/ring_buffer.h \
  midipal/hardware_config.h avrlib/parallel_io.h avrlib/serial.h \
  midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/randomizer.o: midipal/apps/randomizer.cc \
  midipal/apps/randomizer.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h midipal/note_map.h \
  avrlib/random.h midi/midi.h midipal/notes.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/log2.h avrlib/devices/rotary_encoder.h \
  avrlib/devices/switch.h avrlib/devices/shift_register.h avrlib/gpio.h \
  avrlib/timer.h avrlib/time.h avrlib/ui/event_queue.h avrlib/op.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h
build/midipal/scale_processor.o: midipal/apps/scale_processor.cc \
  midipal/apps/scale_processor.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h avrlib/random.h \
  midipal/display.h avrlib/devices/buffered_display.h avrlib/log2.h \
  avrlib/op.h avrlib/time.h avrlib/devices/hd44780_lcd.h \
  avrlib/software_serial.h avrlib/avrlib.h avrlib/size_to_type.h \
  avrlib/gpio.h avrlib/timer.h avrlib/ring_buffer.h \
  midipal/hardware_config.h avrlib/parallel_io.h avrlib/serial.h \
  midipal/clock.h midipal/event_scheduler.h midipal/note_stack.h \
  midipal/notes.h midipal/note_map.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/sequencer.o: midipal/apps/sequencer.cc \
  midipal/apps/sequencer.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h avrlib/op.h \
  avrlib/string.h midipal/clock.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/time.h \
  avrlib/devices/hd44780_lcd.h avrlib/software_serial.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h avrlib/ring_buffer.h \
  midipal/hardware_config.h avrlib/parallel_io.h avrlib/serial.h \
  midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/settings.o: midipal/apps/settings.cc \
  midipal/apps/settings.h midipal/app.h avrlib/base.h midipal/resources.h \
  avrlib/resources_manager.h midi/midi.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/log2.h avrlib/devices/rotary_encoder.h \
  avrlib/devices/switch.h avrlib/devices/shift_register.h avrlib/gpio.h \
  avrlib/timer.h avrlib/time.h avrlib/ui/event_queue.h avrlib/op.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h
build/midipal/sh_sequencer.o: midipal/apps/sh_sequencer.cc \
  midipal/apps/sh_sequencer.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h avrlib/op.h \
  avrlib/string.h midi/midi.h midipal/clock.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/time.h \
  avrlib/devices/hd44780_lcd.h avrlib/software_serial.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h avrlib/ring_buffer.h \
  midipal/hardware_config.h avrlib/parallel_io.h avrlib/serial.h \
  midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/splitter.o: midipal/apps/splitter.cc \
  midipal/apps/splitter.h midipal/app.h avrlib/base.h midipal/resources.h \
  avrlib/resources_manager.h midi/midi.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/log2.h avrlib/devices/rotary_encoder.h \
  avrlib/devices/switch.h avrlib/devices/shift_register.h avrlib/gpio.h \
  avrlib/timer.h avrlib/time.h avrlib/ui/event_queue.h avrlib/op.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h
build/midipal/sync_latch.o: midipal/apps/sync_latch.cc \
  midipal/apps/sync_latch.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h avrlib/op.h \
  avrlib/string.h midi/midi.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/time.h \
  avrlib/devices/hd44780_lcd.h avrlib/software_serial.h avrlib/avrlib.h \
  avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h avrlib/ring_buffer.h \
  midipal/hardware_config.h avrlib/parallel_io.h avrlib/serial.h \
  midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/tanpura.o: midipal/apps/tanpura.cc midipal/apps/tanpura.h \
  midipal/app.h avrlib/base.h midipal/resources.h \
  avrlib/resources_manager.h avrlib/op.h avrlib/string.h midipal/clock.h \
  midipal/display.h avrlib/devices/buffered_display.h avrlib/log2.h \
  avrlib/time.h avrlib/devices/hd44780_lcd.h avrlib/software_serial.h \
  avrlib/avrlib.h avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h midipal/ui.h avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
build/midipal/transposer.o: midipal/apps/transposer.cc \
  midipal/apps/transposer.h midipal/app.h avrlib/base.h \
  midipal/resources.h avrlib/resources_manager.h midipal/display.h \
  avrlib/devices/buffered_display.h avrlib/log2.h avrlib/op.h \
  avrlib/time.h avrlib/devices/hd44780_lcd.h avrlib/software_serial.h \
  avrlib/avrlib.h avrlib/size_to_type.h avrlib/gpio.h avrlib/timer.h \
  avrlib/ring_buffer.h midipal/hardware_config.h avrlib/parallel_io.h \
  avrlib/serial.h midipal/notes.h midipal/note_map.h midipal/ui.h \
  avrlib/devices/pot_scanner.h avrlib/adc.h \
  avrlib/devices/rotary_encoder.h avrlib/devices/switch.h \
  avrlib/devices/shift_register.h avrlib/ui/event_queue.h
