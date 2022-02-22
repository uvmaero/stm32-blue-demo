# STM32-Blue-Demo

Using the STM32 Blue Pill to get up to speed on the STM32 environment. Note: The chip is the SMT32F103C8. (A lot of generic blue pill boards will use a functionally idential chip as this) This repo aslo has information on the Discovery Board which uses the STM32F303VCT8. 

## Project Notes: 

More branches will be added for project development, but the main branch will always have the latest stable working version of all the projects. The README will include images and links to more resources where necessary. If something doesn't work or is difficult to understand, please submit an issue. 

## Resources: 

You are not alone. There are people who have just started with STM32 boards before, and there will be many more in the future. Here are some of the resoures used to make these tutorials accessible for you: 

 - [SWV Trace Debugging](https://sebastian.io/blog/stm32-swv-trace-debugging)
 - [STM32F303 Datasheet](https://www.st.com/resource/en/datasheet/stm32f303vc.pdf)
 - [STM32F303 Reference Manual](https://www.st.com/resource/en/reference_manual/dm00043574-stm32f303xb-c-d-e-stm32f303x6-8-stm32f328x8-stm32f358xc-stm32f398xe-advanced-arm-based-mcus-stmicroelectronics.pdf)

## Sections

Sections include: 

- [Connecting and Programming](#connecting-and-programming)

    - [Applications You'll Need](#applications)

    - [Pin Configurations](#pin-setup)

    - [Build Configuration](#build-configuration)
    - [Code Notes](#code-notes)

- [Debugging](#debugging)

    - [Serial Output](#serial-output)

    - [Briking a board](#what-happens-when-i-brick-the-board?)

- [Folders in Repository](#folders)

#
# Connecting and Programming

## Applications

This uses the ST-Link V2 programmer. Lots of generic ones available. Be sure to properly connect the SWDIO and SWDCLK lines. 

Applications you'll need: 

 - [STM32CubeProgrammer](https://www.st.com/en/development-tools/stm32cubeprog.html) -> used for connecing to the baord and reading data. If using a stm32 clone, download [STM32LinkUtility](https://www.st.com/en/development-tools/stsw-link004.html) instead

 - [STM32CubeIDE](https://www.st.com/en/development-tools/stm32cubeide.html) -> used to configure the chip, develop firmware, upload to board, debugging and more

## Pin Setup

**Important** when configuring the pins, Enable the SYS Debug mode as "Serial Wire". If you don't, after uploading (if you can) you may brick the board (See [Debugging](#debugging))

For the clock configuration, you'll have to go into the RCC tab and enable the high clock speed. Now you can go to the clock configuration tab and change the clock speed to 72MHz.

## Build Configuration

If you're following this tutorial using the blue pill board, it's probably a clone and is very difficult. If so, Go to [STM32 Clone Build](#stm32-clone-build) to see how to build and run the program. Otherwise, in the Cube IDE setup the debug configurations as shown below: 

Under the Debug Configuration options, add a new debug configuration for each project you create. In "Debugger", "Debug probe" should be "ST-LINK (OpenOCD)". 

Select "Show Generator Options" for more options. Under "Mode Setup" select "Software System Reset"

![Debug Configuration](images/debug_config_2.png)

## STM32 Clone Build

If you're using the clone, you have to use the STM32 Link Utility Application and upload the .bin file that is generated. When you're in the CubeIDE, you can build the file by going to the main.c file under the src folder and pressing the little hammer icon in the toolbar at the top. Now a file is built. Error messages may be generated. Address those as needed. 

Next you can go to the ST Link Utility and Program the board. You'll have to go to the folder you were working in and select the .bin file in the Debug folder

## Code Notes

For GPIO I/O use:
    
    HAL_GPIO_WritePin(GPIOA, GPIO_PIN_1, GPIO_PIN_SET)

**GPIOA** refers to the A or B pins, use GPIOA or GPIOB

**GPIO_PIN_1** refers to the pin number, use the number you want to switch

**GPIO_PIN_SET** is the state of the gpio. **_SET** changes the state and **_RESET** turns it back to the default

Delay function: 

    HAL_DELAY(1000)

Where **1000** is the time in system ticks. This corresponds to the number of system ticks which is not always 1ms, so be careful. 

Analog Control

assuming the ADC1 pin is an anlog input 

    HAL_ADC_Start(&hadc1);
	HAL_ADC_PollForConversion(&hadc1, HAL_MAX_DELAY);
	raw = HAL_ADC_GetValue(&hadc1);


# Debugging

## Serial Output

Yes there is a way to do this. Still looking into it...

## What Happens when I brick the board? 

First off, "brick" means that the board is no longer accepting programming information. The most common reason is the chip is no longer looking for input. (the programming pins disabled after upload) The way to fix this is (first) to ensure the SYS -> Debug mode is set to "Serial Wire" in the "Pinout & Configuration options before uploading to the board. Next we have to erase the board and re-upload the program.

## Erasing the Chip

You'll need to use the "STM32CubeProgrammer" Application to connect to the board and erase the chip. This process can be tricky. You'll have to hold the reset on the board before you press "connect" but release it about 1-2 seconds after pressing "connect". Timming is crutial and may take a couple tries. 

# Folders

# Blink Folder

Quick Demonstration for the STM32CubeIDE environment to make the STM32 Blue Pill Blink. (Default is 2000ms interval). 
You should be able to open this project and upload to the blue pill. 

No schematic for this one, it just uses the built in LED for output. The built in LED uses GPIO pin PC13 set to GPIO_OUTPUT mode with output set to LOW. Here's the pin configurations though. **NOTE** Don't forget to set the SYS debug mode to "Serial Wire". 

![Blink Pinout](images/blink-pin-diagram.png)

# Sensor Reading Folder

This is a more in depth overview about connecing an analog sensor (potentiometer) and reading the values on the computer.

There are two code snippits in the main loop. Only have one uncommented at a time, or else it will interfer with eachother. One is an "led counter" which turns leds on and off at a specific interval". The second on uses a potentiometer to control which leds are on. See the schematic for wiring diagrams. 

![Sensor Pinout](images/sensor-pin-diagram.png)

# LCD Folder

This is an example of how to setup an LCD Screen. There are two files that you'll need from this folder for any LCD screen setup. They are in the inc and src folders, file called "i2c-lcd". 

# Discovery CAN Loopback

This project is about CAN. Specificcally, if you have a device, you can setup CAN filters so you can test Tx and Rx mailboxes. This is very valuable to setup filters. From this you should be able to switch to Normal mode and use some transceivers to setup the actual bus. 