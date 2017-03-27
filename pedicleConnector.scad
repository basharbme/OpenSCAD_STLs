$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm

difference() {
    union() {
        //main body
        translate([0, 0, 25/2]) 
        cube([14.8, 14.8, 25], center = true);
        
        //central cylinder
        translate([0, 0, -19/2])
        cylinder(h = 19, r = 13/2, center = true);  
    }
    
    //central cylinder
    translate([0, 0, -19/2])
    cylinder(h = 19.1, r = 9.6/2, center = true); 
    
    //set screws
    rotate([90, 0, 0])
    translate([0, -4, 4])
    cylinder(h = 13, r = 1.5, center = true); 
    
    rotate([90, 0, 0])
    translate([0, -8, 4])
    cylinder(h = 13, r = 1.5, center = true); 
    
    rotate([90, 0, 0])
    translate([0, -12, 4])
    cylinder(h = 13, r = 1.5, center = true); 
}