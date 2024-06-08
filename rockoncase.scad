include <arduino/arduino.scad>
include <roundedcube.scad>

unoDimensions = boardDimensions( UNO );

//Board mockups
arduino();




difference() {
    translate([0, 0, -8]) {
        enclosure();
    }

    
    translate([-10.0,8.0,11]) cube([20,23,5]);
}


difference() {


    translate([0, 0, 75]) {
        enclosureLid();
    };
    translate([14.1,34,71]) roundedcube([35,35,15],false,2,"z");
}