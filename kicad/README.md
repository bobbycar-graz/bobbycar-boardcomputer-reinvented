# bobbycar-boardcomputer-reinvented PCB / KiCAD
This PCB will have both MCUs, a few connectors and a USB-C port for flashing.

## Ideas
- USB-C for flashing
  - For reducing costs, only have one USB-C port on the PCB and use some kind of switch (for example DIP switches) to select which MCU to flash. (TBD if this can work) -> No, 

## Requirements
- 2x Display Header (just two different EN pins)
- 1x buzzer
- 12V Input seperated from CAN 12V
- Poti 10k
- Connect MCUs with UART

## Resources
- ESP32 S3:  https://www.espressif.com/sites/default/files/documentation/esp32-s3_datasheet_en.pdf

## Notes
- [ ] Check inter processor UART pins
- [ ] Check SPI-Display pins
- [ ] Check CAN pins
- [ ] Beeper connected to +3V3 instead of +5V
- [ ] Check J5 lcsc and footprint
- [ ] Check Strapping Pins & SPI Flash Voltage (Section Below Strapping Pins) (https://www.espressif.com/sites/default/files/documentation/esp32-s3_datasheet_en.pdf#cd-pins-strap)

## PDFs
There are exported PDFs in the `export` folder. These can be updated using the shell script `scripts/generate_pdfs.sh`.
