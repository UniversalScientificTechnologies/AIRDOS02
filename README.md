# AIRDOS02 - Airborne cosmic radiation dosimeter with GNSS receiver

![AIRDOS02A back panel](/doc/src/img/AIRDOS02A_box_front.jpg "AIRDOS front panel")

Cosmic radiation dosimeter and spectrometer unit. It is intended for airborne measurement of cosmic radiation and dosimetry in mixed ionization fields on board aircraft.

![AIRDOS02A flux rate measurement during aircraft flight](/doc/src/img/airdos_flight_doserate.png "flux rate measured by AIRDOS")


### Technical parameters

* Silicon PIN diode detector with ~60 mm³ detection volume
* Measurement endurance up to 200 days with two LS33600 battery cells
* Number of energy channels 248
* Energy measurement resolution <60 keV/channel
* GPS logging interval of 10 minutes or more.
* Time to GPS fix	26 s
* Airborne GPS parameters (navigation altitude verified up to 36 km a.m.s.l.)
* Radiation spectra integration time  10 s
* Size LxWxH 166 mm x 107 mm x 57 mm
* Weight 0.85 kg (Without batteries and GPS antenna)


The device can be purchased from [Universal Scientific Technologies s.r.o](http://www.ust.cz). Contact us by [email](sale@ust.cz) for a commercial quotation.

## Hardware description

### Block schematics

![AIRDOS02A block diagram](hw/sch_pcb/AIRDOS02A_block.png)

#### PCRD04B - semiconductor detector circuit

![AIRDOS02A - detektor schematics ](hw/sch_pcb/PCRD04B_Detector_Schematics.png)

### Wired connections

| DATALOGGER01A       | PCRD04B           | Color | Length |
| :-------------: |:-------------:| :-----:|:-----:|
| PB0     | TRACE | purple |10cm shield |
| GND     | POWER GND | black |10cm shield |
| VDD    | POWER VDD | orange |10cm shield |
| PA0     | A/D | yellow |10cm shield |
| PA1    | REF | grey |10cm shield |

| DATALOGGER01A       | GPS01A          | Color | Length |
| :-------------: |:-------------:| :-----:|:-----:|
| GND SWPOWER     | GND POWER | black |15cm |
| VDD SWPOWER     | VDD POWER | orange |15cm |
| TX0     | RX0 | orange |15cm |
| RX0     | TX0 | yellow |15cm |

### Jumper configuration

| GPS01B       |           |
| :-------------: |:-------------:|
| USB     | OFF |
| EXT.POWER     | EXT |
| ANT.TYPE   | Active |

| DATALOGER01A       |           |
| :-------------: |:-------------:|
| SDVDD     |  |
| POWER - BATERY     |  |

## Relevant publications

  * [AIRDOS — open-source PIN diode airborne dosimeter](https://iopscience.iop.org/article/10.1088/1748-0221/16/03/T03006)
  * [CALIBRATION OF SILICON DETECTORS LIULIN AND AIRDOS USING COSMIC RAYS AND TIMEPIX FOR USE AT FLIGHT ALTITUDES](https://doi.org/10.1093/rpd/ncac104)
