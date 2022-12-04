font = "Liberation Sans";
// Nicer, but not generally installed:
// font = "Bank Gothic";

file = "test.dxf";


module side(str) {
   linear_extrude(height = 100, center = true, convexity = 10)
   import (file = file, layer = str);
}


module G() offset(0.3) text("G", size=10, halign="center", valign="center", font = font);
module E() offset(0.3) text("E", size=10, halign="center", valign="center", font = font);
module B() offset(0.5) text("B", size=10, halign="center", valign="center", font = font);

$fn=64;


intersection() {
    side("side_xy");
    
   rotate([90, 0, 0])
      side("side_xz");
    
    rotate([90, 0, 90])
      side("side_yz");
   
    /*
    rotate([90, 0, 90])
      linear_extrude(height = 20, convexity = 3, center=true) G();
    //*/
  }
