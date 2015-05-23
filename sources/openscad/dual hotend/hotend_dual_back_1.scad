use <configuration.scad>
//mount_2(0);
//translate([0, 90,35])rotate([0, 90, 0])clamp(1);
//clamp(1);
//fan_mount(1);

$fn=32;


mount_bracket();
//color("red")
slide_left();
//color("blue")
slide_right();
module slide_left(){

slide_j();
 slide_clamp();
}
module slide_right(){
    mirror([1,0, 0]) 
    slide_left();
    }
//hotend_tall();
//translate([4, -61.5, -2]) rotate([0, -90, 0])hotend_short();
module mount_bracket() {
    difference(){
        union(){
        translate([0, 0, 2])cube([60, 5, 35], center=true);
        for(x=[16, -16]){
            translate([x, -3, 0])cube([5,2, 30], center=true);
            };
        }
        hull() {
        translate([26.9, 5,12])rotate([90,0 ,0])cylinder(r=1.8, h=10);
        translate([26.9, 5, 7])rotate([90, 0, 0])cylinder(r=1.8, h=10);   
        };
         hull() {
        translate([-26.9, 5,12])rotate([90,0 ,0])cylinder(r=1.8, h=10);
        translate([-26.9, 5, 7])rotate([90, 0, 0])cylinder(r=1.8, h=10);   
        };
         hull() {
        translate([26.9, 5,-12])rotate([90,0 ,0])cylinder(r=1.8, h=10);
        translate([26.9, 5, -7])rotate([90, 0, 0])cylinder(r=1.8, h=10);   
        };
     hull() {
        translate([-26.9, 5,-12])rotate([90,0 ,0])cylinder(r=1.8, h=10);
        translate([-26.9, 5, -7])rotate([90, 0, 0])cylinder(r=1.8, h=10);   
        };
     translate([-16, 2, -1])cube([5.55, 2, 38], center=true);
        translate([16, 2, -1])cube([5.55, 2, 38], center=true);
        hull() {
         
         #translate([-16.05, 5,12])rotate([90,0 ,0])cylinder(r=1.6, h=10);
        translate([-16.05, 5, -12])rotate([90, 0, 0])cylinder(r=1.6, h=10);   
        
       //  translate([-12, -1, -21])cylinder(r=2.1, h=45);
         };
     hull() {
          translate([16, 5,12])rotate([90,0 ,0])cylinder(r=1.6, h=10);
        translate([16, 5, -12])rotate([90, 0, 0])cylinder(r=1.6, h=10);   
         };
         #translate([-8, 0, 17])cylinder(r=1.5, h=3.1);
         #translate([8, 0, 17])cylinder(r=1.5, h=3.1);
        };
      }
 module slide(){
     difference(){
     union(){
         translate([-15, -11.3,10])cube([29, 17, 30], center=true);
         translate([-6.5, 0,22.5])cube([12, 8, 5], center=true);
        // hull() {
         //translate([-15.9, -1, -9.5]) cylinder(r=2, h=35);
         //translate([-12.1, -1, -9.5]) cylinder(r=2, h=35);
           //  };
         };
     translate([-30, -34, -11])rotate([0, -90, -90])hotend_cutout();
       translate([-16, -10, -1])rotate([-90, 0, 0])cylinder(r=1.8, h=10);
         translate([-16, -11, -1]) rotate([-90, 0, 0])cylinder(r=3, h=5.5);
         translate([-15, -16, 0])cube([30, 17, 20], center=true);
         translate([-8, 0, 15])cylinder(r=1.5, h=15);
         translate([-26, -2.5,0])cube([10, 4, 40], center=true);
         #translate([-26, 0, 21]) rotate([90, 0, 0]) cylinder(r=1.5, h=25);
          #translate([-4, 0, 21]) rotate([90, 0, 0,]) cylinder(r=1.5, h=25);
        # translate([-16, -3, 5])cube([5.4, 2.1, 30], center=true);
         };
     }
    
  module slide_j(){
     difference(){
     union(){
         translate([-15, -11.3,10])cube([29, 17, 30], center=true);
         translate([-6.5, 0,22.5])cube([12, 8, 5], center=true);
        // hull() {
         //translate([-15.9, -1, -9.5]) cylinder(r=2, h=35);
         //translate([-12.1, -1, -9.5]) cylinder(r=2, h=35);
           //  };
         };
     translate([-30, -34, -11])rotate([0, -90, -90])hotend_cutout();
       translate([-16, -10, -1])rotate([-90, 0, 0])cylinder(r=1.8, h=10);
         translate([-16, -11, -1]) rotate([-90, 0, 0])cylinder(r=3, h=5.5);
         translate([-15, -16, 0])cube([30, 17, 20], center=true);
         translate([-8, 0, 15])cylinder(r=1.5, h=15);
         translate([-26, -2.5,0])cube([10, 4, 40], center=true);
         #translate([-26, 0, 21]) rotate([90, 0, 0]) cylinder(r=1.5, h=25);
          #translate([-4, 0, 21]) rotate([90, 0, 0,]) cylinder(r=1.5, h=25);
        # translate([-16, -3, 5])cube([5.4, 2.1, 30], center=true);
         };
     }
       
    
     module slide_clamp(){
     difference(){
         translate([-15,-25, 15]) cube([29, 10, 20], center=true);
          translate([-30, -34, -11])rotate([0, -90, -90])hotend_cutout();
          #translate([-26, -20, 21]) rotate([90, 0, 0]) cylinder(r=1.8, h=15);
          #translate([-4, -20, 21]) rotate([90, 0, 0,]) cylinder(r=1.8, h=15);
         #translate([-27, -20, 10]) rotate([90, 0, 0]) cylinder(r=1.5, h=15);
         translate([-3, -20, 10]) rotate([90, 0, 0]) cylinder(r=1.5, h=15);
         };
         }
module hotend_tall() {
    color("silver")
    union(){
       # translate([-30.56, 15, 15])rotate([0, 90, 0]) cylinder(r=.62, h=70);
        translate([35.72, 15, 15])rotate([0, 90, 0]) cylinder(r=8, h=3.72);
        translate([-30.56, 15, 15]) rotate([0, 90, 0]) cylinder(r=6, h=70);
        };
    }
module hotend_short() {
    color("silver")
    union() {
        #    translate([-30.56, 44, 15]) rotate([0, 90, 0]) cylinder(r=.62, h=62.45);
        translate([28.17, 44, 15]) rotate([0, 90, 0]) cylinder(r=8, h=3.72);
        };
        translate([22.16, 44, 15]) rotate([0, 90, 0]) cylinder(r=6, h=6);
      
    }
module mount_2(hotend) {
    difference() {
 union() {
     translate([0, 0, 0])cube([30, 60, 5]);
     translate([28, -1, 0]) cube([7.75, 62, 15]);
translate([20, 30, 0])cube([10, 30, 15]); 
 };
    translate([5, 10, -.1]) cube([15, 40, 5.2]); //open back	
	//lower mount screw holes
	hull(){
		translate([4, 3.1 , -.1]) cylinder(r = 1.8, h= 5.5); 
		translate([8, 3.1, -.1]) cylinder(r= 1.8, h= 5.5);
};
  hull() {
	translate([8, 56.9, -.1]) cylinder(r = 1.8, h=5.5);	
	translate([4, 56.9, -.1]) cylinder(r = 1.8, h=5.5);
};
	//upper mount screw holes
hull() {
   // translate([4, 3 , -.1]) cylinder(r = 1.8, h= 5.5);
		translate([19.5, 3, -.1]) cylinder(r=1.8, h=5.5);
		translate([23.5, 3, -.1]) cylinder(r=1.8, h=5.5);
};		
//hull() {
//translate([23.5, 57, -1]) cylinder(r=1.8, h=5.8);
//translate([19.5, 57, -.1]) cylinder(r=1.8, h=5.8);
    //translate([4, 57, -.1]) cylinder(r = 1.8, h=5.5);
//};
		//hot end fin releif
		hotend_cutout();
       translate([28.16, 44, 15]) rotate([0, 90, 0]) cylinder(r=10, h=15);
		
		
		//#translate([22.9, 44, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
};
}
module fan_mount(fan) {
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
};
module clamp(fan=1) {
   difference(){
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
    translate([28, 24.5, 27]) cube([7.75, 10, 15]);
     translate([28, 29, 48]) rotate([0, 90, 0]) cylinder(r=12, h=7.75);
    
}
           };
           translate([27.9, 29, 48])rotate([0, 90, 0]) cylinder(r=9.25, h=10);
           translate([32, 29, 55]) cylinder(r=1.8, h=6);
           hotend_cutout(0);
           fan_mount(1);
         // translate([-2, 32, 3])cube([30, 30, 25]); 
             translate([28.16, 44, 15]) rotate([0, 90, 0]) cylinder(r=10, h=15);
           };
       }
module hotend_cutout(hotend=0) {
    if (hotend==1) {
  
	};
//hotend mount holes
		if (hotend==0) {
 		translate([-.1, 15, 15]) rotate([0, 90, 0]) cylinder(r = 13.5, h=28.1);
		//translate([-5, 44, 15]) rotate([0, 90, 0]) cylinder(r=13.5, h=28.1);
		//translate([22.9, 44, 15])rotate([0, 90, 0]) cylinder(r=8.1, h=2.5);
		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=8.05, h=2.5);
		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
		//translate([22.9, 44, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
		};	
		if (hotend==1) {
 		//translate([-.1, 15, 15]) rotate([0, 90, 0]) cylinder(r = 13.5, h=27);
		//translate([-.1, 45, 15]) rotate([0, 90, 0]) cylinder(r=13.5, h=27);
		translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=8.1, h=4.6);
		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=8.1, h=4.6);
		translate([27.9, 15, 15])rotate([0, 90, 0]) cylinder(r=6.0, h=12);
		translate([27.9, 45, 15])rotate([0, 90, 0]) cylinder(r=6, h=10);
		};
//clamp screw holes
//translate([32, 56, -.1]) cylinder(r=1.55, h=30);
//translate([32, 4, -.1]) cylinder(r=1.55, h=30);
    }
