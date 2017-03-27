$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm

difference() {
    union() {
        //main body
        translate([10, 0, 7/2]) 
        cube([55, 40, 7], center = true);
      
        //cylinder
        translate([0, 0, 0])
        cylinder(r = 9, h= 18, center = true); 
    }
    
    //screw holes for main
    translate([11, 11, 8/2]) 
    cylinder(r = 2, h=8.1, center = true);
    
    translate([-11, 11, 8/2]) 
    cylinder(r = 2, h=8.1, center = true);
    
    translate([11, -11, 8/2]) 
    cylinder(r = 2, h=8.1, center = true);
    
    translate([-11, -11, 8/2]) 
    cylinder(r = 2, h=8.1, center = true);
    
    //screw holes for cylinder
    rotate([90, 0, 0])
    translate([0, -2, 0]) 
    cylinder(r = 1.5, h=19, center = true);
    
    rotate([90, 0, 0])
    translate([0, -5.5, 0]) 
    cylinder(r = 1.5, h=19, center = true);
    
    //cylindrical hole
    translate([0, 0, 0]) 
    cylinder(r = 6.25/2, h=18.1, center = true);
}