$fn = 32;
z_rod_wall_dist = 22;
motor = 30.99;
rod_d=8.1;
threaded_rod=9;
height=150;
spacing=60;
wall_dist=14;
lm_bearing=15.1;

//motor_mount();
color("purple")
//translate([0, 0, height]) top_mount();
//color("silver")
//translate ([0, 0, height/2])rods(rod_d, height, spacing, wall_dist); 
color("blue")
//translate([0, 0, height/2]) z_carriage(wall_dist);
rotate([180, 0, 0])z_carriage(wall_dist);
module top_mount() {
     difference() {
union(){
    cube([spacing+rod_d*6, 5, 12], center = true);
    hull(){
    translate([0,12, 0])cube([spacing+rod_d*2, 20, 12], center = true);
    translate([spacing/2+rod_d/2, z_rod_wall_dist+wall_dist/3,0])cylinder(d=rod_d, h= 12, center = true);
        translate([-spacing/2-rod_d/2, z_rod_wall_dist+wall_dist/3,0])cylinder(d=rod_d, h= 12, center = true);
};
};
    translate([-spacing/2-rod_d*2, 6, 0])   mount_slot();
    translate([spacing/2+rod_d*2-rod_d/2, 6, 0]) mount_slot();
rods(rod_d,height,spacing,wall_dist);
translate([0, 0, 5])z_608(z_rod_wall_dist);
//z_motor(motor, z_rod_wall_dist);
};  
    }
module z_carriage(wall_dist) {
    difference(){
    union(){
        translate([0, wall_dist-5, 0])cube([spacing+40, 5, 45], center = true);
        translate([-(spacing-lm_bearing), wall_dist, 0])cube([10, 5, 45], center = true);
        translate([(spacing-lm_bearing), wall_dist, 0])cube([10, 5, 45], center = true);
    rods(lm_bearing+8, 45, spacing);
       translate([0, wall_dist+7.5, 16.5]) cube([22, 20, 12], center =  true);
        translate([spacing/2, wall_dist+lm_bearing*2, 0]) cube([10, 60, 45], center =  true);
         translate([-spacing/2, wall_dist+lm_bearing*2, 0]) cube([10, 60, 45], center =  true);
       
        };
          translate([-(spacing-lm_bearing), wall_dist-2, 0])cube([15, 1.5, 46], center = true);
        translate([(spacing-lm_bearing), wall_dist-2, 0])cube([15, 1.5, 46], center = true);
        translate([0, wall_dist+8, 17.9]) nutcatch_parallel("M8",l=8);
   translate([0, wall_dist+8, 23]) hole_through(name="M8", l=50+5, cl=1, h=0, hcl=0.4); 
        rods(lm_bearing, 46, spacing);
        translate([0, wall_dist+65, -35]) rotate([0, 90, 0])cylinder(d=100, h=spacing+15, center=true);
        translate([spacing/2, wall_dist+43, 25])hole_through(name="M3", l=50, cl=0.5, h=0);
        translate([spacing/2, wall_dist+23, 25])hole_through(name="M3", l=50, cl=0.5, h=0);
        translate([-spacing/2, wall_dist+43, 25])hole_through(name="M3", l=50, cl=0.5, h=0);
translate([-spacing/2, wall_dist+23, 25])hole_through(name="M3", l=50, cl=0.5, h=0);
      #  translate([(spacing/2+lm_bearing), -wall_dist, rod_d]) rotate([90, 0, 0])hole_through(name="M3", l=89, cl=0.5, h=1);
        #  translate([-(spacing/2+lm_bearing), -wall_dist, rod_d]) rotate([90, 0, 0])hole_through(name="M3", l=89, cl=0.5, h=1);
        
      #  translate([(spacing/2+lm_bearing), -wall_dist, -rod_d*1.5]) rotate([90, 0, 0])hole_through(name="M3", l=89, cl=0.5, h=1);
        #  translate([-(spacing/2+lm_bearing), -wall_dist, -rod_d*1.5]) rotate([90, 0, 0])hole_through(name="M3", l=89, cl=0.5, h=1);
        #translate ([-spacing, wall_dist+23, rod_d+6])nutcatch_sidecut("M3", l=150, clk=0.15, clh=0.15, clsl=0.15);
          #translate ([-spacing, wall_dist+43, rod_d+6])nutcatch_sidecut("M3", l=150, clk=0.15, clh=0.15, clsl=0.15);
        };
    
}
module motor_mount() {
    difference() {
union(){
    cube([spacing+rod_d*6, 5, 12], center = true);
    hull(){
    translate([0,12, 0])cube([spacing+rod_d*2, 20, 12], center = true);
    translate([spacing/2+rod_d/2, 40,0])cylinder(d=rod_d, h= 12, center = true);
        translate([-spacing/2-rod_d/2, 40,0])cylinder(d=rod_d, h= 12, center = true);
};
};
     translate([-spacing/2-rod_d*2, 6, 0])   mount_slot();
    translate([spacing/2+rod_d*2-rod_d/2, 6, 0]) mount_slot();
rods(rod_d,height,spacing,wall_dist);
z_608(z_rod_wall_dist);
z_motor(motor, z_rod_wall_dist);
};
}
module mount_slot() {
    hull(){
      rotate([90, 0, 0])  cylinder(d=4.5, h= 12.2);
        translate([4,0, 0]) rotate([90, 0, 0]) cylinder(d=4.5, h=12.2);
    };
    }

module rods(rod_d = 8, height=50, spacing = 100, wall_dist= 13.5){
translate([-spacing/2, wall_dist, 0])
cylinder(d=rod_d, h=height, center = true);
    translate([spacing/2, wall_dist, 0]) cylinder(d=rod_d, h=height, center = true);
   translate([0, z_rod_wall_dist, 0]) cylinder(d=threaded_rod, h=height, center = true);
}  

module z_608(z_rod_wall_dist = 24){
translate([0, (z_rod_wall_dist), -.1]) cylinder(d=22.1, h=15, center = true);
}


module z_motor(motor = 30, z_rod_wall_dist = 24){
translate ([-motor/2,z_rod_wall_dist - motor/2, -.1])cylinder(d=3, h=13, center=true);
translate ([-motor/2,z_rod_wall_dist + motor/2, -.1])cylinder(d=3, h=13, center=true);
   translate ([motor/2,z_rod_wall_dist - motor/2, -.1])cylinder(d=3, h=13, center=true);
translate ([motor/2,z_rod_wall_dist + motor/2, -.1])cylinder(d=3, h=13, center=true);
    
}
include <cyl_head_bolt.scad>
//include <bolts.scad>