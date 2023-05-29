# bobbycar-boardcomputer-reinvented
This is a project to reinvent the current board-computer. It is still based on ESP32, but has some new features in hardware and a completely rewritten software.

## Changes

- Updated PCB
  - 2nd Microcontroller for reading the potentiometers
  - Split entertainment / display / cloud from important things
  - Add on-board USB C flasher for both MCUs
  - Newer ESP32 module (ESP32-S3)
- Rewritten software
  - Written from scratch
  - Updated Librarys
  - Programmed for easier customization
  - Toolchains for generating icons etc.

## New Structure

The idea is to split the old board-computer into multiple parts:
1. The entertainment system
2. The input system

The input system will feature a non-ESP MCU (Arduino, STM,... *TBD*) that has some config options to modify the control behavior. It will make some calculations based on config and send the result via CAN to the motor-controllers.

The entertainment system will only receive CAN-Messages, which will then be displayed or relayed to the cloud. It will also have a USB-C port for flashing the firmware. The entertainment system will be based on ESP32-S3. We will continue to use the display from the old board-computer (ILI9341 320x240).

Before implementing UI, there should be some kind of sketch to see how it will look like.

## Development Flow

To ensure quality, there will be a development flow. Before ordering PCBs, we will have meetings to see what we can improve. When we build the software, we talk and communicate in a way that each team member understands what the plan is.

If there is some bug or a new feature, **always** document it using issues. Only then start to work on it.

Feel free to make a Pull Request!
