# 16-bit I2S Audio Transmitter (SkyWater 130nm)

This repository contains the complete RTL-to-GDSII physical design flow for a 16-bit I2S audio transmitter, targeting the open-source SkyWater 130nm PDK. It also includes a TL-Verilog port of the core logic, developed in the Makerchip environment to visually demonstrate the state feedback and logic flow.

## 🛠️ Tech Stack & Tools
* **Hardware Description Languages:** Verilog, TL-Verilog
* **Physical Design Flow:** OpenLane (Synthesis, Floorplanning, Placement, CTS, Routing)
* **PDK:** SkyWater 130nm
* **Verification & Visualization:** KLayout (Signoff), Makerchip (Logic Visualization)

## ⚙️ Architecture & Protocol Implementation
The transmitter strictly adheres to the standard I2S protocol. Key implementations include:
* **1-bit MSB Delay:** Correctly implemented the critical 1-clock cycle delay for the Most Significant Bit (MSB) after the word select (WS) line toggles.
* **Synchronous Serial Transmission:** Managed clock domains and state transitions to ensure reliable audio data streaming.

## 📐 Physical Design (RTL-to-GDSII)
The Verilog RTL was pushed through the OpenLane automated ASIC flow. 
* **Synthesis & Routing:** Successfully routed using the Sky130 standard cell library.
* **Signoff:** Layout verification and DRC checks were visualized using KLayout.


<img width="909" height="612" alt="image" src="https://github.com/user-attachments/assets/27590098-284e-47e6-af3a-ca2f8474d8f8" />


## 🎓 Makerchip TL-Verilog Port
To make the synchronous logic and state machine easier to understand, the core transmitter logic was ported to TL-Verilog. 


<img width="827" height="870" alt="image" src="https://github.com/user-attachments/assets/dd972fb8-ee2b-4bac-9cac-e3f5102913f5" />


## 🚀 How to Run
To reproduce the physical design flow, ensure OpenLane is installed and run:
`./flow.tcl -design i2s_transmitter`
