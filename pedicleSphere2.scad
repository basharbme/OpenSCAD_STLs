$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm

difference() {
    union() {
        //main body
        translate([0, 0, 25/2]) 
        sphere(25, center = true);  
    }
    //slice off top
    translate([0, 0, 36.5])
    cube([30, 30, 3], center = true);
    
    //square hole on bottom
    translate([0, 0, 2.2]) 
    cube([15, 15, 25+4+.5], center = true);
    
    //holes through bottom of ball
    rotate([90, 0, 0])
    translate([0, -2, 0])
    cylinder(h = 50, r = 1.5, center = true);
    
    rotate([0, 90, 0])
    translate([2, 0, 0])
    cylinder(h = 50, r = 1.5, center = true);
    
    //recesses for bottom
    rotate([90, 0, 0])
    translate([0, -2, -18])
    cylinder(h = 9, r = 3, center = true);
    
    rotate([90, 0, 0])
    translate([0, -2, 18])
    cylinder(h = 9, r = 3, center = true);
    
    rotate([0, 90, 0])
    translate([2, 0, -18])
    cylinder(h = 9, r = 3, center = true);
    
    rotate([0, 90, 0])
    translate([2, 0, 18])
    cylinder(h = 9, r = 3, center = true);
    
    //hole through top of ball
    rotate([0, 0, 0])
    translate([0, 0, 50/2])
    cylinder(h = 60, r = 1.5, center = true);
    
    //recess for top
    rotate([0, 0, 0])
    translate([0, 0, 50/2+7.1])
    cylinder(h = 6, r = 3, center = true);
}