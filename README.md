# AIRDOS02
Airborne cosmic radiation dosimeter.

Cosmic radiation dosimeter unit. It is intended for airborne measurement of cosmic radiation and dosimetry in mixed ionization fields on board of aircraft. 



![AIRDOS02A back panel](/doc/src/img/AIRDOS02A_box_back.JPG "AIRDOS back panel")

Technical parameters are following: 

* Silicon PIN diode detector with 60mm3 detection volume
* Measurement endurance 20 days
* Number of erengy channels    248
* Energy measurement resolution    <60 keV/channel
* GPS logging interval    10 minutes
* Time to GPS fix	26 s
* Integration time    10 s
* Size LxWxH 166 mm x 107 mm x 57 mm 
* Weight 0.85 kg (Without batteries and GPS antenna)

Device block diagram
![AIRDOS02A block diagram](hw/sch_pcb/AIRDOS02A_block.png)

PCRD04B semiconductor detector schematics
![AIRDOS02A - detektor schematics ](hw/sch_pcb/PCRD04B_Detector_Schematics.png)

DATALOGGER01A - PCRD04B
10cm - shield
PB0-TRACE -purple
GND-POWER GND - black
VDD-POWER GND - orange
PA0-A/D-yellow
PA1-REF - grey

DATALOGGER01A - GPS01A
15cm
GND SWPOWER - GND POWER - black
VDD SWPOWER - VDD POWER - orange
TX0 - RX0 - orange
RX0 - TX0 - yellow

GPS01A - JUMPER
USB - OFF
EXT.POWER - EXT
ANT.TYPE - Active

DATALOGER01A - JUMPER
SDVDD


The device can be [purchased from Universal Scientific Technologies s.r.o](http://www.ust.cz/shop/product_info.php?&products_id=269) online store. 
