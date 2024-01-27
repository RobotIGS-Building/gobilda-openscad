module Uchannel(holes) {
    cube([24*(holes)+24, 48, 48]);
}

module LUchannel(holes) {
    cube([24*(holes)+24, 48, 12]);
}

Uchannel(2);
translate([0, 60, 0]) LUchannel(5);