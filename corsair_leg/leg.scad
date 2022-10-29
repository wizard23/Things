w = 20 + 4;
l = 17 + 2;
h = 2 + 0.5;

cutoutW = 2;
cutoutH = 10;
cutoutDelta = 1.9;

knobsR = 0.95;
knobsL = 2;
knobsDelta = 2;
$fn=32;

// cube([100, 50, 40]);

difference() {
    union() {
        cubeEx([w, l, h]);
        translate([0,l/2-knobsDelta,0])
            rotate([0, 90, 0]) 
                cylinder(w+2*knobsL, knobsR, knobsR, center=true);
    }
    translate([w/2-cutoutW/2-cutoutDelta, l/2, 0]) cubeEx([cutoutW, cutoutH*2, h*3]);
    translate([-(w/2-cutoutW/2-cutoutDelta), l/2, 0]) cubeEx([cutoutW, cutoutH*2, h*3]);
}

// my improved version of the openSCAD cube module
// size works like the first parameter of the cube primitive, it's a 3 dim vector that contains the sidelengths of the "cube" ;)
// center is also a 3 dim vector so you can specify the centering for each axis individually, This is normaly either -0.5, 0 (equal to center = true), or 0.5 (equal to center = false) but any value is possible.
// offset specifies an absolute offset in mm from the position that would result from just the center parameter
module cubeEx(size=[1,1,1], center=[0,0,0], offset=[0,0,0], childCenters, childOffsets, unionNotDifference=0)
{
	//s = 1.5;
	//centerExp = [s*center[0], s*center[1], s*center[2]];

	translate([center[0]*size[0]+offset[0], center[1]*size[1]+offset[1], center[2]*size[2]+offset[2]])
	{
		if (!unionNotDifference)
			difference()
			{
				cube(size, center = true);
				if ($children > 0) for (i = [0:$children-1])
					translate([childCenters[i][0]*size[0]+childOffsets[i][0], childCenters[i][1]*size[1]+childOffsets[i][1], childCenters[i][2]*size[2]+childOffsets[i][2]]) child(i);
			}
		if (unionNotDifference)
			union()
			{
				cube(size, center = true);
				if ($children > 0) for (i = [0:$children-1])
					translate([childCenters[i][0]*size[0]+childOffsets[i][0], childCenters[i][1]*size[1]+childOffsets[i][1], childCenters[i][2]*size[2]+childOffsets[i][2]]) child(i);
			}
	}
}