---
title: "How to Make a Visualizer Using DF Player Mini"
date: 2026-02-12T23:50:14+06:00
draft: false
tags: ["electronics", "programming"]
---

Today I will note down all the steps I implemented in order to make a visualizer for the handheld device I am making. It was simple yet intriguing. You don't have to do a lot of things for that. I am going to list all the components which will be needed to make this. That is just a raw audio waveform visualization. That's why it doesn't need any use of complicated math like fourier transform.

## Things we need
- ESP32/Arduino
- DF Player Mini
- An OLED Display
- 1-10uF Capacitor
- 0.1uF Capacitor
- 10K Resistor (2x)
- 1k Resistor
- Breadboard, Jumper cables

## Pins to focus
- ESP32 ADC1 Pins (32, 33, 34, 35, 36, 39)
- DF Player Mini DAC_L or DAC_R

First of all, we need to make a bias circuit. Which works like a transistor. We are going to use this bias circuit to eliminate the DC signal coming from the DAC of DF Player mini. Hopefully, you can see the schematic. However, I am trying to explain the schematic in my words.

First things is to do, put two 10K resistor in series within esp32 VIN and GND. The middle point of these two resistors is called the biasing point. in this point we are going to connect our DAC of DF Player mini and ADC1 of ESP32. Don't forget to check the voltage in the biasing point. It should be somewhere around 1.6V. Now connect the DAC_L or DAC_R to the biasing point and through a capacitor. The capacitance can be somewhere between 1uF to 10uF. I have used a 2.2uF. Positive side of capacitor to the biasing point and the negative to the DAC. Then let's connect the ESP32 ADC (32 for my case) to biasing point. But through a 1K resistor. I am going to explain all these 'Why' questions later. Finally, time to use the 0.1uF capacitor. Use this capacitor to connect the ADC pin to GND. Thus we are done with our wiring.

Let us talk about some technical stuff. Why did I used those random components? There is obviously a reason, right? The 2.2uF capacitor now works as a decoupling capacitor. It doesn't let the DC signals coming to ESP32, it only lets the AC to come. Audio signals are AC because it does up down from positive volts to negative volts to express its characteristic. Whereas DC signals do not jump. Here DC is only used to provide power not to do anything with the actual sound components. So use that capacitor.

Now what about those two 10K resistor? Those are to create 1.6 volts. ESP32 can only measure 0 to 3.3V. In analog reading it stands 0 to 4095. You can see it can't work with negative values. So we have to somehow make those negative values. Thus we provide external volts to make the scale a bit higher. We provide the half of actual voltage, which is 1.65 volts. This voltage values may differ just a bit, so nothing to worry about. Sometimes we call it the center. Because it actually creates a center axis of a graph, if we are to plot.

I used the 0.1uF capacitor and 1K resistor to remove noises from the pins and surrounding. I don't know how well they work. But I guess it should it.

# Coding

```c
//========== Wave visualizer ==========
#define SAMPLES 128
#define SAMPLE_DELAY  80
#define ADC_PIN 32
#define CENTER 1950
#define GAIN 6
#define DEADZONE 20


unsigned long lastSampleTime = 0;
int sampleIndex = 0;
int samples[SAMPLES];


void captureWaveform() {
  for (int i = 0; i < SAMPLES; i++) {
    int raw_adc = analogRead(ADC_PIN);
    // center around 0
    int centered = raw_adc - CENTER;          // CENTER = ADC_BIAS VOLT 1.67 in analogValue.
                                              // We use this center to make AC signals. ESP32 ADC
                                              // can't read negative volt. We create a bias so that
                                              // the negative volts get positve by substracting the bias
                                              // thus we can constrain the AC signal in 0 to 4095
                                              // typically the positve value goes above (4095/2) and negative
                                              // stays below that value. thus we get a center (4095/2) ~ 2048
                                              // It can also be called the idle volts reading from ADC. 1950 is
                                              // in my case.

    if (abs(centered) < DEADZONE) {
      centered = 0;
    }

    // software gain
    centered *= GAIN;
    // shift back
    int amplified = centered + CENTER;
    // clamp
    samples[i] = constrain(amplified, 0, 4095);

    delayMicroseconds(SAMPLE_DELAY);
  }
}


void drawMusicVisualizer() {
  captureWaveform();
  u8g2.clearBuffer();
  u8g2.setDrawColor(1);
  for (int x = 1; x < SAMPLES; x++) {
    int y1 =  map(samples[x - 1], 0, 4095, 63, 0);
    int y2 = map(samples[x], 0, 4095, 63, 0);
  
    u8g2.drawLine(x-1, y1, x, y2);
  }
  u8g2.sendBuffer();
}
// ===================================
```

Explaining the functions,

```c
void captureWaveform()
```

This function collects (SAMPLES = 128) amount of values from ADC pins using analogRead function. Now what is centered? I already added a comment in the code. Hopefully reading it will clarify. Then there is an if statement which does work like a deadzone filter. That means when we centered value is less than the (DEADZONE = 20) then we don't count it and set it to 0. This approach was taken to reduce unwanted noises. Finally adding a software gain to make the value amplified a bit from the software side. The next line, I just added the value to another variable after adding gain. Clamping the value within a certain range and ending with a slight delay. So we are done with data scraping. It is time to visualize those data.

```c
void drawMusicVisualizer()
```
We here only need the basics of u8g2 library. Used the drawLine function to connect the dots. Also used map function to do some simple math to convert big values to equivalent small values so that those value could be printed in my small display. Why 63? Because the display I used is 128x64, so width is 64. Now 64 is represented from 0 to 63 in the buffer and that is why 63.

# So that was it!

{{< rawhtml >}}
<iframe width="315" height="560" src="https://youtube.com/embed/2eIA-SE-zJw?si=gbyZwh-N6XPosBYD" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen style="align-self: center;"></iframe>
{{< /rawhtml >}}