print=1; // 0= veiw assembly 1= printable render
$fn= 32;
if (print==1){

print();
}
else {
rotate([0, -90, 0]){
		hotends();
	fans();
	sensor();
	mount();
	clamp();
	};
};
module print() {
translate([60, 0, 0]) mount();
translate([0, 0 , 35]) rotate([0, 90, 0]) clamp(); 
}
module hotends() {
	color("silver")
		translate([41, 15, 15]) rotate([90, 180, -90]) import("e3d_hotend.stl");
	color("silver")
		translate([41, 45, 15]) rotate([90, 180, -90]) import("e3d_hotend.stl");

}
module fans() {
	color("black")
		translate([-8, -.5, 27.15]) scale(1) import("30mm_fan.stl");
	color("black")
		translate([-8, 30, 27.15]) import("30mm_fan.stl");
}


module sensor(){
color("blue")
translate([-25, 30, 48]) rotate([0, 90, 0]) cylinder(r=9, h=68);
}

module mount() {
color("green")
difference() {
union(){ //Main Mount Bracket
	translate([28, -1, 0]) cube([7.75, 62, 15] );
	cube([30, 60, 5] );
	
}
translate([-.1, 10, -.1]) cube([25, 40, 5.2]);
translate([4, 3 , -.1]) cylinder(r = 1.8, h= 5.5); //mount screw hols
translate([4, 57, -.1]) cylinder(r = 1.8, h=5.5);
	//translate([5, 3, 1]) cube(3.3, 3.2, 10);
translate([20.5, 3, -.1]) cylinder(r=1.8, h=5.5);
translate([20.5, 57, -.1]) cylinder(r=1.8, h=5.5);
	
   translate([-.1, 15, 15]) rotate([0, 90, 0]) cylinder(r = 13.5, h=27);//hot end fin releif
	translate([-.1, 45, 15]) rotate([0, 90, 0]) cylinder(r=13.5, h=27);//hot end fin relief
//hotend mount holes
translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=8, h=2.1);
	translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=8, h=2.1);
	translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
	translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
	
}
}
module clamp() {//outer clamp
color("purple")
difference() {

union() {
translate([28, 30, 48])rotate([0, 90, 0]) cylinder(r=13, h=7.75);
translate([28, 25, 25])cube([7.75, 10, 18]);
translate([28, -1, 15.1])cube([7.75, 62, 12]);
//fanmount
translate([16, -1, 15.1])cube([12, 62, 12]);
translate([16, 25, 15.1])cube([10, 5, 12]);}
color("pink")
//hot end mount holes
translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=8, h=2.1);
	translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=8, h=2.1);
	translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
	translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
//sensor mount
translate([27.9, 30, 48]) rotate([0, 90, 0]) cylinder(r=9.1, h=10);
translate([32, 30, 48]) cylinder(r=1.55, h=20);
translate([32, 4, 0]) cylinder(r=1.55, h=30);
//fan mount
translate([20.5, 2.5, 10]) cylinder(r=1.55, h=30);
translate([20.5, 26.5, 10]) cylinder(r=1.55, h=30);
translate([20.5, 33.5, 10]) cylinder(r=1.55, h=30);
translate([20.5, 57.5, 10]) cylinder(r=1.55, h=30);
//clamp holes
translate([32, 56, 0]) cylinder(r=1.55, h=30);
//fin releif
	
   translate([-.1, 15, 15]) rotate([0, 90, 0]) cylinder(r = 13., h=28.05);//hot end fin releif
	translate([-.1, 45, 15]) rotate([0, 90, 0]) cylinder(r=13., h=28.05);//hot end fin relief

}
}