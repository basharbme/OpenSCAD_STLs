$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm

difference() {
    union() {
        //main body
        translate([0, 0, 3/2]) 
        cube([50, 19.5, 3], center = true);
        
        //x+ cylinder
        color("green")
        translate([25, 0, 3/2]) 
        cylinder(h = 3, r = 19.5/2, center = true);
        
        //x- cylinder
        color("green")
        translate([-25, 0, 3/2]) 
        cylinder(h = 3, r = 19.5/2, center = true);
    }
    
    //holes in cylinders
    translate([25, 0, 3/2]) 
    cylinder(h = 4, r = 3.5, center = true);
    

    translate([-25, 0, 3/2]) 
    cylinder(h = 4, r = 3.5, center = true);
    
    //hole for center
    translate([0, -5, 3/2]) 
    cylinder(h = 4, r = 3, center = true);
    
     //holes for backplate screws
    translate([15, 3.75, 3/2]) 
    cylinder(h = 4, r = 1.4, center = true);
    
    translate([-15, 3.75, 3/2]) 
    cylinder(h = 4, r = 1.4, center = true);
}