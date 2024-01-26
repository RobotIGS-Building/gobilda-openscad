$fn = 10;

use <gobilda/channel.scad>;
use <gobilda/wheel.scad>

/* chassis */
translate([0, 5, 7.4]) rotate([180, 0, 0]) Uchannel(17);
translate([2.4*7+2.4, 5, 2.6]) rotate([0, 0, 90]) Uchannel(8);
translate([0, 5+4.8+2.4*8+2.4, 7.4]) rotate([180, 0, 0]) Uchannel(17);
translate([0, -0.7, 7.4]) rotate([-90, 0, 90]) LUchannel(13);

/* tower */
translate([5+2.4*8+2.4, 5+4.8+2.4*8+2.4, 7.4]) rotate([0, -90, 90]) Uchannel(7);
translate([2.4*8+2.4, 0.2, 7.4]) rotate([0, -90, -90]) Uchannel(7);

/* wheels */
translate([2.4*2+2.4, -2.5, 5.0]) rotate([90, 0, 0]) mecanum();
translate([2.4*2+2.4, 2.5+5+4.8+2.4*8+2.4, 5.0]) rotate([90, 0, 0]) mecanum();
translate([2.4*15+2.4, -2.5, 5.0]) rotate([90, 0, 0]) mecanum();
translate([2.4*15+2.4, 2.5+5+4.8+2.4*8+2.4, 5.0]) rotate([90, 0, 0]) mecanum();
