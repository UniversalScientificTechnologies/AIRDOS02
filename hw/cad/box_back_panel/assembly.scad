//CELICKO ZADNI
//---------------------------------------
$fn=100;
//PARAMETRY CELICKA OD VYROBCE
//rozměr čelíčka
celicko_x=103;
celicko_y=53;
celicko_z=1.5;

//otvory v celisku od vyrobce
celicko_dira_prumer=3.5;
celicko_dira_souradniceX=95.02/2; //souradnice od stredu celicka
celicko_dira_souradniceY=45/2;    //souradnice od stredu celicka
//---------------------------------------

//PRUMER FREZY
freza_prumer=2;

//OTVORY FREZA
//otvor_1 - pro SMA
otvor1_prumer=6.6;
otvor1_vyska=5.95; //vyska srazene hrany
otvor1_souradniceX=21.5; //souradnice od stredu celicka
otvor1_souradniceY=14.5; //souradnice od stredu celicka

//---------------------------------------

CELICKO_VYSLEDNE();

module CELICKO_VYSLEDNE(){
    difference() {
        CELICKO_OD_VYROBCE();
    
        //otvor1
        translate([otvor1_souradniceX,otvor1_souradniceY,0])  
            minkowski() {
                difference() { 
                    cylinder(celicko_z, d=otvor1_prumer-freza_prumer, center=true); 
                    translate([otvor1_vyska-freza_prumer,0,0])
                        cube([otvor1_prumer-freza_prumer,otvor1_prumer-freza_prumer,celicko_z+0.1],center=true); 
            	}  
                cylinder(r=freza_prumer/2,h=0.01, center=true);
            }  
    
    } 
} 

module CELICKO_OD_VYROBCE(){
    difference() {
        cube([celicko_x,celicko_y,celicko_z],center=true);

/*
//otvory na srouby    
translate([celicko_dira_souradniceX,celicko_dira_souradniceY,0])  
    cylinder(celicko_z+0.01, d=celicko_dira_prumer, center=true);   
     zakomentováno díry neodpovídají realitě, značná nepřesnost výrobce
translate([-celicko_dira_souradniceX,celicko_dira_souradniceY,0])  
    cylinder(celicko_z+0.01, d=celicko_dira_prumer, center=true); 

translate([celicko_dira_souradniceX,-celicko_dira_souradniceY,0])  
    cylinder(celicko_z+0.01, d=celicko_dira_prumer, center=true); 

translate([-celicko_dira_souradniceX,-celicko_dira_souradniceY,0])  
    cylinder(celicko_z+0.01, d=celicko_dira_prumer, center=true);  
   */ 
} 
} 