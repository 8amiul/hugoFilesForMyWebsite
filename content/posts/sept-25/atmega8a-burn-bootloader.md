---
title: "ATmega8a bootloader burning and programming"
date: 2025-09-07T23:15:59+06:00
draft: false
tags: ["electronics"]
---

I recently bought an ATmega8a microcontroller for making a simple project. Modern microcontrollers by default come with a bootloader burned. Thus, we don't have to hassle with those such as ESP32 or Arduino Nano. To burn a bootloader we could use something call an AVR Programmer, but these are so expensive!

Better we get an arduino nano and use that as an isp programmer.

### Necessary components
- ATmega8a
- Arduino Nano
- Breadboard
- Jumper wires
- 16 Mhz Crystal Oscillator
- 22pF Capacitor (2x)
- LED and 220 ohm resistor (Optional)

### Wiring

| **Arduino Nano Pin** | **ATmega8A Pin**            | **Function** |
| -------------------- | --------------------------- | ------------ |
| **D10**              | Pin 1 (RESET)               | RESET        |
| **D11**              | Pin 17 (MOSI)               | MOSI         |
| **D12**              | Pin 18 (MISO)               | MISO         |
| **D13**              | Pin 19 (SCK)                | SCK          |
| **5V**               | Pin 7 (VCC) & Pin 20 (AVCC) | Power        |
| **GND**              | Pin 8 (GND) & Pin 22 (GND)  | Ground       |


[Wiring Image](/images/posts/sept-25/atmega8a-burn-bootloader/wiring_diagram.jpeg)

### Step - 1
- Import [MiniCore](https://github.com/MCUdude/MiniCore) to Arduino IDE.
- Install MiniCore from board manager in Arduino
- Setup Arduino according to the wiring diagram

### Step - 2
- Open ArduinoISP file from 'Files > examples > ArduinoISP' in IDE
- Upload that program to Arduino Nano

### Step - 3
- Set Board: MiniCore>ATmega8
- Set the Arduino port
- Set Programmer: Arduino as ISP
- Hit Burn Bootloader

### Step - 4
- Write your desire code for uploading to the ATmega8a
- Select Sketch > Upload using programmer

## Common Errors
### Error 1

{{< rawhtml >}}
<pre style="font-size: 1rem; align-self: center; background-color: #422c2c;padding: 1rem; max-width: 90%; white-space: pre-wrap; word-wrap: break-word; margin-bottom: 1rem;">
Warning: attempt 1 of 10: not in sync: resp=0x15
Warning: attempt 2 of 10: not in sync: resp=0x15

Error: protocol expects OK byte 0x10 but got 0x14
Error: cannot obtain SW version
Error: initialization failed  (rc = -3)
 - double check the connections and try again
 - use -B to set lower the bit clock frequency, e.g. -B 125kHz
 - use -F to override this check
Error: protocol expects sync byte 0x14 but got 0x01
Failed chip erase: uploading error: exit status 1
</pre>
{{< /rawhtml >}}

- Check whether the wiring is correct and connections fine or not using a multimeter.
- Check correct board and port is selected or not.
- Hold Arduino Nano Reset button manually for a second, after hitting burn bootloader/Upload Using programmer.

### Error 2
{{< rawhtml >}}
<pre style="font-size: 1rem; align-self: center; background-color: #422c2c;padding: 1rem; max-width: 90%; white-space: pre-wrap; word-wrap: break-word; margin-bottom: 1rem;">
Error: expected signature for ATmega8 is 1E 93 07 - double check chip or use -F to carry on regardless Failed programming: uploading error: exit status 1
</pre>
{{< /rawhtml >}}

- Put pressure on ATmega8a with your fingers so that the pins are set perfectly on the breadboard.
- If still it fails then keep holding ATmega8a and try uploading.  
