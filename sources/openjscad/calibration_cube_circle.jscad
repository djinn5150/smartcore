// title: Calibration Cubes & circles
// author: Jerry Barr
// license: Creative Commons CC BY
// URL: http://www.youmagine.com/users/djinn5150
// revision: 0.001
// tags: Calibration, cube, circle

function calibration_cube() {
    return union (
        difference(
        cube([15,15, 10]),sphere({r:7, resolution:32}).translate([7.5,7.50,10])
        ),
        difference(
            cube(15).translate([-20, -20, 0]),
            cube([14, 14, 15]).translate([-19.5, -19.5, 0])
            )
        );   
}
function calibration_cylinder() {
    return union(
        union(
        cylinder({r:7, h:10, resolution:32}).translate([7.5, -12, 0]),
        sphere({r:7, resolution:32}).translate([7.5, -12, 10])
            ),difference(
            cylinder({r:7.5, h:10, resolution:32}).translate([-12, 7.5, 0]),
            cylinder({r:6.7, h:9, resolution:32}).translate([-12, 7.5, 0])
            )
        );
}

function main() {
var a = calibration_cube();
    var b = calibration_cylinder();
	var d = CSG.cube({radius: 10});
	var e = CAG.circle({radius:10});
return [
{
	name: "cubes", 
	caption: "2 cubes",
	data: d
	},
	{
	name: "circles",
	caption: "Circles",
	data: e}
	];
}
   
    
   