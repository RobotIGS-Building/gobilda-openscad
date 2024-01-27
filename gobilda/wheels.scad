module MecanumWheel(){
	difference(){
		//Inner Circle
		cylinder(h = 6.0, d = 56, center = true);
		//Mid Hole
		cylinder(h = 6.01, d = 14, center = true);
		//Screw Holes 
		for (i = [0:8]){
			rotate([0,0,(360/8)*i])
			translate([16,16,0]) cylinder(h = 6.01, d = 4, center = true);
			rotate([0,0,(360/8)*i])
			translate([8,8,0]) cylinder(h = 6.01, d = 4, center = true);
		}
	}
	//Wheels
	for (i = [0:10]){
		rotate([0,0,36*i])
		rotate([45,0,0]){
			//Both sided Wheel parts
			translate([41.5,0,-15]) cylinder(h = 15, d1 = 11, d2 = 13);
			translate([41.5,0,0]) cylinder(h = 15, d1 = 13, d2 = 11);
			//Wheel Holder
			translate([29,0,0]) cube([4,8,30], true);
			translate([27,-4,15]) cube([19,8,2]);
			translate([27,-4,-17]) cube([19,8,2]);
		}
	}
}

module SimpleWheel() {
    cylinder(d=96, h=38, center=true);
}

MecanumWheel();

translate([110,0,0]) SimpleWheel();