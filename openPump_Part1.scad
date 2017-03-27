$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm

difference() {
    union() {
        //main body
        translate([0, 0, 19.5/2]) 
        cube([50, 22, 19.5], center = true);
        
        //x+ cylinder
        color("green")
        rotate([90, 0, 0])
        translate([25, 19.5/2, 0]) 
        cylinder(h = 22, r = 19.5/2, center = true);
        
        //x- cylinder
        color("green")
        rotate([90, 0, 0])
        translate([-25, 19.5/2, 0]) 
        cylinder(h = 22, r = 19.5/2, center = true);
        
        //top piece
        color("blue")
        translate([0, -7.75, 10.25+19.5])
        cube([44 ,6.5, 20.5], center = true);
        

        rotate([-90, 0, 0])
        translate([0, -19.5, 0])
        cylinder(h = 22, r1 = 18, r2 = 0, center = true);
    }
    //holes in cylinders
    rotate([90, 0, 0])
    translate([25, 19.5/2, 0]) 
    cylinder(h = 23, r = 3.5, center = true);
    
    rotate([90, 0, 0])
    translate([-25, 19.5/2, 0]) 
    cylinder(h = 23, r = 3.5, center = true);
    
    rotate([90, 0, 0])
    translate([25, 19.5/2, -3]) 
    cylinder(h = 22, r = 6.5, center = true);
    
    rotate([90, 0, 0])
    translate([-25, 19.5/2, -3]) 
    cylinder(h = 22, r = 6.5, center = true);
    
    //hole in center
    translate([0, 2, 5])
    cube([12, 7, 12], center = true);
    translate([0, -6, 5])
    cube([12, 4, 12], center = true);
    
    rotate([90, 0, 0])
    translate([0, 5, 0]) 
    cylinder(h = 23, r = 3, center = true);
    
    //holes in top piece for screws
    rotate([90, 0, 0])
    translate([17.5, 27, 0]) 
    cylinder(h = 23, r = 1.4, center = true);
    
    rotate([90, 0, 0])
    translate([-17.5, 27, 0]) 
    cylinder(h = 23, r = 1.4, center = true);
    
    //holes for backplate screws
    rotate([90, 0, 0])
    translate([15, 27/2, 0]) 
    cylinder(h = 23, r = 1.4, center = true);
    
    rotate([90, 0, 0])
    translate([-15, 27/2, 0]) 
    cylinder(h = 23, r = 1.4, center = true);
    
//    translate([25+19.5/4, 3.5, 19.5/4])
//    cube([19.5/2, 23, 19.5/2], center = true);
    
//    translate([-25-19.5/4, 3.5, 19.5/4])
//    cube([19.5/2, 23, 19.5/2], center = true);
}