include <arduino/arduino.scad>
include <roundedcube.scad>

unoDimensions = boardDimensions( UNO );

//Board mockups

screen_sidelength = 31;
screen_dist_from_left = 15.18;
screen_dist_from_bot = 27.42;

accelerometer_height_from_ground = 12.66;
accelerometer_width = 27.15;
accelerometer_height = 6;

lid_height = 75;

//arduino();

difference() {
    translate([0, 0, -8]) {
        enclosure(heightExtension = 11.9);
    }

    
    translate([-10.0,8.0,accelerometer_height_from_ground]) cube([20,accelerometer_width,accelerometer_height]);
}

difference() {
  difference() {


    translate([0, 0, 75]) {
        #enclosureLid();
    };
    translate([screen_dist_from_left,screen_dist_from_bot,71]) roundedcube([screen_sidelength,screen_sidelength,15],false,2,"z");
    
};

// cut off extra tab
translate([-10,0,lid_height-21.5]) cube(20);

}