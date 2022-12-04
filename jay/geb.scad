font = "Liberation Sans";
// Nicer, but not generally installed:
// font = "Bank Gothic";


module side_xy() {
    linear_extrude(height = 100, center = true, convexity = 10)
   import (file = "test.dxf", layer = "layer_side_xy");
}


module G() offset(0.3) text("G", size=10, halign="center", valign="center", font = font);
module E() offset(0.3) text("E", size=10, halign="center", valign="center", font = font);
module B() offset(0.5) text("B", size=10, halign="center", valign="center", font = font);

$fn=64;


intersection() {
    linear_extrude(height = 20, convexity = 3, center=true) B();
    
    rotate([90, 0, 0])
      linear_extrude(height = 20, convexity = 3, center=true) E();
    
    rotate([90, 0, 90])
      linear_extrude(height = 20, convexity = 3, center=true) G();
  }
