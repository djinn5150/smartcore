// title: dual_hotend_v2.02
// author: Jerry Barr
// license: Creative Commons CC BY
// URL: http://www.youmagine.com/users/djinn5150
// revision: 0.001
// tags: 3d Printer Parts, Hotend
var mount_Width = 30;
function mount_front(mount_Width) {
return union( CSG.cube({
  center: [30, 0, 15],
  radius: [7.75, mount_Width, 15]
}), CSG.cube({
	center: [0, 0 , 5],
	radius: [30, 60, 5]})
);
}
function e3d() {
return union( 
		CSG.cylinder({
		start: [ 0, -1, 0],
		end: [0, 1, 0],
		radiusStart: 6.1, 
		radiusEnd: 6.1
		})
		);
}

function main() {
var a = mount_front();
var b = e3d();
return b;
//return CSG.cube();
}