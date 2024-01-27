module Uchannel(holes) {
    difference() {
        cube([24*(holes)+24, 48, 48]);
        translate([-0.1, 2.5 ,2.5]) cube([24*(holes)+24.2, 43, 45.51]);
        for (i = [1:holes]) {
            for (r = [0, 90]) {
                translate([24*i, 24, 24]) rotate([r, 0, 0]) {
                    {
                        translate([  0,   0, 0]) cylinder(d=14, h=48.1, center=true);
                        translate([-16, -16, 0]) cylinder(d= 4, h=48.1, center=true);
                        translate([ -8, -16, 0]) cylinder(d= 4, h=48.1, center=true);
                        translate([-16,  16, 0]) cylinder(d= 4, h=48.1, center=true);
                        translate([ -8,  16, 0]) cylinder(d= 4, h=48.1, center=true);
                        translate([-16,  -8, 0]) cylinder(d= 4, h=48.1, center=true);
                        translate([ -8,  -8, 0]) cylinder(d= 4, h=48.1, center=true);
                        translate([-16,   8, 0]) cylinder(d= 4, h=48.1, center=true);
                        translate([ -8,   8, 0]) cylinder(d= 4, h=48.1, center=true);
                        translate([-12,   0, 0]) cylinder(d= 4, h=48.1, center=true);
                    }
                    hull() {
                        translate([ 0, -16,  0]) cylinder(d=4, h=48.1, center=true);
                        translate([ 0, -12,  0]) cylinder(d=4, h=48.1, center=true);
                    }
                    hull() {
                        translate([ 0,  16,  0]) cylinder(d=4, h=48.1, center=true);
                        translate([ 0,  12,  0]) cylinder(d=4, h=48.1, center=true);
                    }
                }
            }
        }
        for (r = [0, 90]) {
            translate([24*holes, 24, 24]) rotate([r, 0, 0]) {
                translate([16, -16,  0]) cylinder(d=4, h=48.1, center=true);
                translate([ 8, -16,  0]) cylinder(d=4, h=48.1, center=true);
                translate([16,  16,  0]) cylinder(d=4, h=48.1, center=true);
                translate([ 8,  16,  0]) cylinder(d=4, h=48.1, center=true);
                translate([16,  -8,  0]) cylinder(d=4, h=48.1, center=true);
                translate([ 8,  -8,  0]) cylinder(d=4, h=48.1, center=true);
                translate([16,   8,  0]) cylinder(d=4, h=48.1, center=true);
                translate([ 8,   8,  0]) cylinder(d=4, h=48.1, center=true);
                translate([12,   0,  0]) cylinder(d=4, h=48.1, center=true);
            }
        }
    }
}

module LUchannel(holes) {
    difference() {
        cube([24*(holes)+24, 48, 12]);
        translate([-0.1, 02.5 ,02.5]) cube([24*(holes)+242, 43, 9.51]);
        for (i = [1:holes]) {
            translate([24*i, 24, 24]) {
                {
                    translate([  0,   0, 0]) cylinder(d=14, h=48.1, center=true);
                    translate([-16, -16, 0]) cylinder(d=4, h=48.1, center=true);
                    translate([ -8, -16, 0]) cylinder(d=4, h=48.1, center=true);
                    translate([-16,  16, 0]) cylinder(d=4, h=48.1, center=true);
                    translate([ -8,  16, 0]) cylinder(d=4, h=48.1, center=true);
                    translate([-16,  -8, 0]) cylinder(d=4, h=48.1, center=true);
                    translate([ -8,  -8, 0]) cylinder(d=4, h=48.1, center=true);
                    translate([-16,   8, 0]) cylinder(d=4, h=48.1, center=true);
                    translate([ -8,   8, 0]) cylinder(d=4, h=48.1, center=true);
                    translate([-12,   0, 0]) cylinder(d=4, h=48.1, center=true);
                }
                hull() {
                    translate([ 0, -16, 0]) cylinder(d=4, h=48.1, center=true);
                    translate([ 0, -12, 0]) cylinder(d=4, h=48.1, center=true);
                }
                hull() {
                    translate([ 0,  16, 0]) cylinder(d=4, h=48.1, center=true);
                    translate([ 0,  12, 0]) cylinder(d=4, h=48.1, center=true);
                }
                rotate([90, 0, 0]) {
                    translate([-16, -16, 0]) cylinder(d=4, h=48.1, center=true);
                    translate([ -8, -16, 0]) cylinder(d=4, h=48.1, center=true);
                    translate([  0, -16, 0]) cylinder(d=4, h=48.1, center=true);
                }
            }
        }
        translate([24*holes, 24, 24]) {
            {
                translate([ 16, -16, 0]) cylinder(d=4, h=48.1, center=true);
                translate([  8, -16, 0]) cylinder(d=4, h=48.1, center=true);
                translate([ 16,  16, 0]) cylinder(d=4, h=48.1, center=true);
                translate([  8,  16, 0]) cylinder(d=4, h=48.1, center=true);
                translate([ 16,  -8, 0]) cylinder(d=4, h=48.1, center=true);
                translate([  8,  -8, 0]) cylinder(d=4, h=48.1, center=true);
                translate([ 16,   8, 0]) cylinder(d=4, h=48.1, center=true);
                translate([  8,   8, 0]) cylinder(d=4, h=48.1, center=true);
                translate([ 12,   0, 0]) cylinder(d=4, h=48.1, center=true);
            }
            rotate([90, 0, 0]) {
                translate([ 16, -16, 0]) cylinder(d=4, h=48.1, center=true);
                translate([  8, -16, 0]) cylinder(d=4, h=48.1, center=true);
            }
        }
    }
}

Uchannel(2);
translate([0, 60, 0]) LUchannel(5);