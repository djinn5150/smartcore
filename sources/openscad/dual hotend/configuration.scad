//hotend config file

hotend=0 ;//0 for e3d mount  1 for j-head
fan=1; //0 for 40mm 1 for 30mm
sensor=0; //0 for 18mm 1 for 12mm
view=2; // 0 for assembly 1 for print

if (view==2) {
rotate([0, -90, 180]) back_support(hotend, fan);
};
if (view==1) {
mount(hotend, fan);
translate([-40, 1, 36])rotate([0, 90, 0])clamp(hotend, fan, sensor);
translate([40, 60, 0])rotate([0,-90, 180]) back_support(hotend, fan);
};
if (view==0) {
mount(hotend, fan);
clamp(hotend, fan, sensor);
hotends(hotend);
fans();
sensor(sensor);
};
//mount(hotend,fan);
//hotends(hotend);
//clamp(hotend, fan, sensor);

include <dual_hotend_v2.01.scad>
module hotends(hotend) {
		if (hotend==0) {
	color("silver")
		translate([43, 15, 15]) rotate([90, 90, -90]) import("e3d_hotend.stl");
	color("silver")
		translate([43, 45, 15]) rotate([90, -90, -90]) import("e3d_hotend.stl");
	};
	if (hotend==1) {
	color("silver")
	translate([41, 15, 15]) rotate([90, 180, -90]) import("jhead.stl");
color("silver")
	translate([41, 45, 15]) rotate([90, 180, -90]) import("jhead.stl");
};
}
module fans() {
	color("black")
		translate([-8, -.5, 27.15]) scale(1) import("30mm_fan.stl");
	color("black")
		translate([-8, 30, 27.15]) import("30mm_fan.stl");
}


module sensor(){
	
	if (sensor==0) {
		color("blue")
		translate([-25, 30, 48]) rotate([0, 90, 0])cylinder(r=9, h=68);
   	};
 	if (sensor==1) {
		color("cyan")
		translate([-25, 30, 48]) rotate([0, 90, 0])cylinder(r=6, h=60);
		}
}
//sensor();
$fn=32;