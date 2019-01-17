//CELICKO PREDNI
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
//otvor_1 - pro LED
otvor1_prumer=2;
otvor1_souradniceX=-27.2; //souradnice od stredu celicka
otvor1_souradniceY=-7.5; //souradnice od stredu celicka

//otvor_2 - pro vypinac
otvor2_rozmerX=7.7; //rozměry čisté bez úprav pro frézování
otvor2_rozmerY=5.9; //rozměry čisté bez úprav pro frézování
otvor2_souradniceX=22.05; //souradnice od stredu celicka
otvor2_souradniceY=-6.95; //souradnice od stredu celicka
//---------------------------------------

CELICKO_VYSLEDNE();

module CELICKO_VYSLEDNE(){
    difference() {
        CELICKO_OD_VYROBCE();
    
        //otvor1
        translate([otvor1_souradniceX,otvor1_souradniceY,0])  
            cylinder(celicko_z+0.01, d=otvor1_prumer, center=true);   

        //otvor2
        translate([otvor2_souradniceX,otvor2_souradniceY,0])  
            minkowski() {
                cube([otvor2_rozmerX, otvor2_rozmerY-freza_prumer, celicko_z], center=true);
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