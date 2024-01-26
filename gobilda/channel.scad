module Uchannel(holes) {
    difference() {
        cube([2.4*(holes)+2.4, 4.8, 4.8]);
        translate([-0.01, 0.25 ,0.25]) cube([2.4*(holes)+2.42, 4.3, 4.551]);
        for (i = [1:holes]) {
            for (r = [0, 90]) {
                translate([2.4*i, 2.4, 2.4]) rotate([r, 0, 0]) {
                    {
                        translate([ 0.0,  0.0,  0.0]) cylinder(d=1.4, h=4.81, center=true);
                        translate([-1.6, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                        translate([-0.8, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                        translate([-1.6,  1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                        translate([-0.8,  1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                        translate([-1.6, -0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                        translate([-0.8, -0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                        translate([-1.6,  0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                        translate([-0.8,  0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                        translate([-1.2,  0.0,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    }
                    hull() {
                        translate([ 0.0, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                        translate([ 0.0, -1.2,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    }
                    hull() {
                        translate([ 0.0,  1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                        translate([ 0.0,  1.2,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    }
                }
            }
        }
        for (r = [0, 90]) {
            translate([2.4*holes, 2.4, 2.4]) rotate([r, 0, 0]) {
                translate([+1.6, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([+0.8, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([+1.6,  1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([+0.8,  1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([+1.6, -0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([+0.8, -0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([+1.6,  0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([+0.8,  0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([+1.2,  0.0,  0.0]) cylinder(d=0.4, h=4.81, center=true);
            }
        }
    }
}

module LUchannel(holes) {
    difference() {
        cube([2.4*(holes)+2.4, 4.8, 1.2]);
        translate([-0.01, 0.25 ,0.25]) cube([2.4*(holes)+2.42, 4.3, 0.951]);
        for (i = [1:holes]) {
            translate([2.4*i, 2.4, 2.4]) {
                {
                    translate([ 0.0,  0.0,  0.0]) cylinder(d=1.4, h=4.81, center=true);
                    translate([-1.6, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    translate([-0.8, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    translate([-1.6,  1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    translate([-0.8,  1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    translate([-1.6, -0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    translate([-0.8, -0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    translate([-1.6,  0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    translate([-0.8,  0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    translate([-1.2,  0.0,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                }
                hull() {
                    translate([ 0.0, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    translate([ 0.0, -1.2,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                }
                hull() {
                    translate([ 0.0,  1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    translate([ 0.0,  1.2,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                }
                rotate([90, 0, 0]) {
                    translate([-1.6, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    translate([-0.8, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                    translate([ 0.0, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                }
            }
        }
        translate([2.4*holes, 2.4, 2.4]) {
            {
                translate([ 1.6, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([ 0.8, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([ 1.6,  1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([ 0.8,  1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([ 1.6, -0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([ 0.8, -0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([ 1.6,  0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([ 0.8,  0.8,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([ 1.2,  0.0,  0.0]) cylinder(d=0.4, h=4.81, center=true);
            }
            rotate([90, 0, 0]) {
                translate([ 1.6, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
                translate([ 0.8, -1.6,  0.0]) cylinder(d=0.4, h=4.81, center=true);
            }
        }
    }
}