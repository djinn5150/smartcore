//Title: Part Cooling Fan Mount
//Auther: Jerry Barr
//license: Creative Commons CC BY
//url:
//revision:
//tags: SmartrapCore
var fan_size = 60;

function bracket() {
return 		CSG.cube({
			center: [0, 0, 2.5],
			radius: [10, 15, 2.5]
			}).union(
				CSG.cylinder({
					start: [0, 15, 0],
					end: [0, 15, 5],
					radius: 10,
					resolution: 16
			}).union(
				CSG.cube({
				center: [0, -10, 9],
				radius: [10, 5, 8.5]
						}
			))).union(
			CSG.cube({
			center: [0, 0, 25],
			radius: [35, 5, 8]}).rotateX(35).translate(0, 0, -15)).subtract(
			CSG.cylinder({
			start: [-30, 0, 0],
			end: [-30, -30, 40],
			radiusStart: 1.8,
			radiusEnd: 1.8,
			resolution: 16
			})).subtract(CSG.cylinder({
			start: [30, 0, 0],
			end: [30, -30, 40],
			radiusStart: 1.8,
			radiusEnd: 1.8,
			resolution: 16})).subtract(CSG.cylinder({
			start: [30, -45, 0],
			end: [30, 10, 40],
			radiusStart: 1.8,
			radiusEnd: 1.8,
			resolution: 16})).subtract(CSG.cylinder({
			start: [-30, -45, 0],
			end: [-30, 10, 40],
			radiusStart: 1.8,
			radiusEnd:1.8,
			resolution:16}))
			;
		
}


function main() {
var a = bracket();
return a.subtract(
			CSG.cylinder({
  start: [0, 15, 0],
  end: [0, 15, 5],
  radiusStart: 4.2,                   // start- and end radius defined, partial cones
  radiusEnd: 4.2,
  resolution: 16
})) ;
}