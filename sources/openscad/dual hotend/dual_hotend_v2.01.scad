//!openscad
//include <configuration.scad>
module assembly(hotend, fan, sensor){
mount(hotend,fan);
hotends(hotend);
clamp(hotend, fan, sensor);
fans();
sensor();
}
module mount(hotend, fan) {
 color("green")
 difference() {
	union(){ //Main Mount Bracket
		if (fan==1) {
			translate([28, -1, 0]) cube([7.75, 62, 15] );
	
		}
		if (fan==0) {
			translate([28, -6, 0]) cube([7.75, 72, 15]);
		};
			cube([30, 60, 5] );
	}
		translate([5, 10, -.1]) cube([20, 40, 5.2]); //open back	
	//lower mount screw holes
	hull(){
		translate([4, 3 , -.1]) cylinder(r = 1.8, h= 5.5); 
		translate([8, 3, -.1]) cylinder(r= 1.8, h= 5.5);
};
  hull() {
	translate([8, 57, -.1]) cylinder(r = 1.8, h=5.5);	
	translate([4, 57, -.1]) cylinder(r = 1.8, h=5.5);
};
	//upper mount screw holes
hull() {
		translate([19.5, 3, -.1]) cylinder(r=1.8, h=5.5);
		translate([23.5, 3, -.1]) cylinder(r=1.8, h=5.5);
};		
hull() {
translate([23.5, 57, -1]) cylinder(r=1.8, h=5.8);
translate([19.5, 57, -.1]) cylinder(r=1.8, h=5.8);
};
		//hot end fin releif
		if (hotend==1) {
  
	};
//hotend mount holes
		if (hotend==0) {
 		translate([-.1, 15, 15]) rotate([0, 90, 0]) cylinder(r = 13.5, h=27);
		translate([-.1, 45, 15]) rotate([0, 90, 0]) cylinder(r=13.5, h=27);
		translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=8.1, h=2.5);
		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=8.1, h=2.5);
		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
		translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
		};	
		if (hotend==1) {
 		translate([-.1, 15, 15]) rotate([0, 90, 0]) cylinder(r = 13.5, h=27);
		translate([-.1, 45, 15]) rotate([0, 90, 0]) cylinder(r=13.5, h=27);
		translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=8.1, h=4.6);
		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=8.1, h=4.6);
		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=6.0, h=12);
		translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
		};
//clamp screw holes
translate([32, 56, -.1]) cylinder(r=1.55, h=30);
translate([32, 4, -.1]) cylinder(r=1.55, h=30);
	}
}
module clamp(hotend, fan, sensor) {//outer clamp
color("purple")
difference() {

union() {
//if (sensor==1) {
//translate([28, 30, 48])rotate([0, 90, 0]) cylinder(r=10, h=7.75);
//};
//if (sensor==0) {
//translate([28, 30, 48])rotate([0, 90, 0]) //cylinder(r=12, h=7.75);
//}
//translate([28, 25, 25])cube([7.75, 10, 18]);
if (fan==0) {
translate([28, -6, 15.1])cube([7.75, 72, 12]);
//fanmount
translate([16, -6, 15.1])cube([12, 72, 12]);
translate([16, 25, 15.1])cube([10, 5, 12]);
}
if (fan==1) {
translate([28, -1, 15.1])cube([7.75, 62, 12]);
//fanmount
translate([16, -1, 15.1])cube([12, 62, 12]);
translate([16, 25, 15.1])cube([10, 5, 12]);
}
}
color("pink")

//hotend mount holes
		if (hotend==0) {
 		translate([-.1, 15, 15]) rotate([0, 90, 0]) cylinder(r = 13.5, h=27);
		translate([-.1, 45, 15]) rotate([0, 90, 0]) cylinder(r=13.5, h=27);
		translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=8.2, h=2.5);
		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=8.2, h=2.5);
		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=6.2, h=10);
		translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=6.2, h=10);
		};	
		if (hotend==1) {
 		translate([-.1, 15, 15]) rotate([0, 90, 0]) cylinder(r = 13.5, h=27);
		translate([-.1, 45, 15]) rotate([0, 90, 0]) cylinder(r=13.5, h=27);
		translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=8.1, h=4.6);
		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=8.1, h=4.6);
		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=6.0, h=12);
		translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
		};
//sensor mount
//if (sensor==0) {
//translate([27.9, 30, 48]) rotate([0, 90, 0]) cylinder(r=9.1, h=10);
//};
//if (sensor==1) {
//translate([27.9, 30, 48]) rotate([0, 90, 0]) cylinder(r=6.1, h=10);
//translate([32, 30, 48]) cylinder(r=1.55, h=20);
//translate([32, 4, 0]) cylinder(r=1.55, h=30);
//};
//sensor clamp screw 
translate([32, 30, 48]) cylinder(r=1.55, h=30);
//clamp screw holes

translate([32, 4, 0]) cylinder(r=1.75, h=30);

translate([32, 56, 0]) cylinder(r=1.75, h=30);
//fan mount screw holes
if (fan==1) {
translate([20.5, 2.5, 10]) cylinder(r=1.55, h=30);
translate([20.5, 26.5, 10]) cylinder(r=1.55, h=30);
translate([20.5, 33.5, 10]) cylinder(r=1.55, h=30);
translate([20.5, 57.5, 10]) cylinder(r=1.55, h=30);
}
if (fan==0) {
translate([20.5, 2.5, 10]) cylinder(r=1.55, h=30);
translate([20.5, 32.5, 10]) cylinder(r=1.55, h=30);
translate([20.5, 33.5, 10]) cylinder(r=1.55, h=30);
translate([20.5, 57.5, 10]) cylinder(r=1.55, h=30);
}
//clamp holes
//fin releif
	
   translate([-.1, 15, 15]) rotate([0, 90, 0]) cylinder(r = 13., h=28.05);//hot end fin releif
	translate([-.1, 45, 15]) rotate([0, 90, 0]) cylinder(r=13., h=28.05);//hot end fin relief

}
}
module back_support(hotend, fan) {
 color("red")
 difference() {
	union(){ //Main Mount Bracket
		if (fan==1) {
			//translate([28, -1, 0]) cube([7.75, 62, 15] );
	
		}
		if (fan==0) {
			//translate([28, -6, 0]) cube([7.75, 72, 15]);
		};
			cube([30, 60, 5] );
			translate([0,25,5]) cube([10, 10, 10]);
translate([0,30,20]) rotate([0, 90 , 0]) cylinder(r=12, h=10);
	} 
//sensor holes
translate([-.1,30,20]) rotate([0, 90, 0]) cylinder(r=9.5, h=10.5);
translate([10, 30, 20]) rotate([0, 90, 0]) cylinder(r=18, h=35);
		//translate([-.1, 10, -.1]) cube([25, 40, 5.2]); //open back	
	//lower mount screw holes
	hull(){
		translate([4, 3 , -.1]) cylinder(r = 1.8, h= 5.5); 
		translate([8, 3, -.1]) cylinder(r= 1.8, h= 5.5);
};
  hull() {
	translate([8, 59, -.1]) cylinder(r = 5, h=5.5);	
	translate([1, 59, -.1]) cylinder(r = 5, h=5.5);
};
	//upper mount screw holes
hull() {
		translate([18.5, 1, -.1]) cylinder(r=5, h=5.5);
		translate([29.5, 1, -.1]) cylinder(r=5, h=5.5);
};		
hull() {
translate([23.5, 57, -1]) cylinder(r=1.8, h=5.8);
translate([19.5, 57, -.1]) cylinder(r=1.8, h=5.8);
};
		//hot end fin releif
		if (hotend==1) {
  
	};
//hotend mount holes
//		if (hotend==0) {
// 		translate([-.1, 15, 15]) rotate([0, 90, 0]) cylinder(r = 13.5, h=27);
//		translate([-.1, 45, 15]) rotate([0, 90, 0]) cylinder(r=13.5, h=27);
//		translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=8.1, h=2.5);
//		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=8.1, h=2.5);
//		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
//		translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
//		};	
//		if (hotend==1) {
// 		translate([-.1, 15, 15]) rotate([0, 90, 0]) cylinder(r = 13.5, h=27);
//		translate([-.1, 45, 15]) rotate([0, 90, 0]) cylinder(r=13.5, h=27);
//		translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=8.1, h=4.6);
//		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=8.1, h=4.6);
//		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=6.0, h=12);
//		translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
//		};
//clamp screw holes
translate([32, 56, -.1]) cylinder(r=1.55, h=30);
translate([32, 4, -.1]) cylinder(r=1.55, h=30);
	}
}