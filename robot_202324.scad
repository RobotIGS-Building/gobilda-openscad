$fn = 10;

use <gobilda/channels.scad>;
use <gobilda/wheels.scad>

/* chassis */
translate([0, 50, 74]) rotate([180, 0, 0]) Uchannel(17);
translate([24*7+24, 50, 26]) rotate([0, 0, 90]) Uchannel(8);
translate([0, 50+48+24*8+24, 74]) rotate([180, 0, 0]) Uchannel(17);
translate([0, -7, 74]) rotate([-90, 0, 90]) LUchannel(13);

/* tower */
translate([50+24*8+24, 50+48+24*8+24, 74]) rotate([0, -90, 90]) Uchannel(7);
translate([24*8+24, 2, 74]) rotate([0, -90, -90]) Uchannel(7);

/* wheels */
translate([24*2+24, -25, 50]) rotate([90, 0, 0]) MecanumWheel();
translate([24*2+24, 25+50+48+24*8+24, 50]) rotate([90, 0, 0]) MecanumWheel();
translate([24*15+24, -25, 50]) rotate([90, 0, 0]) MecanumWheel();
translate([24*15+24, 25+50+48+24*8+24, 50]) rotate([90, 0, 0]) MecanumWheel();
