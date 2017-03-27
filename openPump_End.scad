$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm

difference() {
    union() {
        //main body
        translate([0, 0, 29.5/2]) 
        cube([69.5, 22, 29.5], center = true);
        
        //top pieces
        color("blue")
        translate([-69.5/2+16.25/2, 0, 6.25+29.5])
        cube([16.25 , 22, 12.5], center = true);
        
        color("blue")
        translate([69.5/2-16.25/2, 0, 6.25+29.5])
        cube([16.25 , 22, 12.5], center = true);     

    }
    //holes for rods
    rotate([90, 0, 0])
    translate([25, 25, -3]) 
    cylinder(h = 16.1, r = 3, center = true);
    
    rotate([90, 0, 0])
    translate([-25, 25, -3]) 
    cylinder(h = 16.1, r = 3, center = true);
    
    //hole in center
    rotate([90, 0, 0])
    translate([0, 21, 0]) 
    cylinder(h = 23, r = 3, center = true);
    
    //top holes for screws
    rotate([90, 0, 0])
    translate([12.5, 24.5, 0]) 
    cylinder(h = 23, r = 1.4, center = true);
    
    rotate([90, 0, 0])
    translate([-12.5, 24.5, 0]) 
    cylinder(h = 23, r = 1.4, center = true);
    
    //bottom holes for screws
    rotate([90, 0, 0])
    translate([12.5, 3.5, 0]) 
    cylinder(h = 23, r = 1.4, center = true);
    
    rotate([90, 0, 0])
    translate([-12.5, 3.5, 0]) 
    cylinder(h = 23, r = 1.4, center = true);
  
    //top side holes for screws
    rotate([90, 0, 90])
    translate([4.5, 35, 69.5/2-16.25/2]) 
    cylinder(h = 16.5, r = 1.4, center = true);
    
    rotate([90, 0, 90])
    translate([4.5, 35, -69.5/2+16.25/2]) 
    cylinder(h = 16.5, r = 1.4, center = true); 
    
    //top side sink holes
    rotate([90, 0, 90])
    translate([4.5, 35, 69.5/2-1.5]) 
    cylinder(h = 3.6, r = 3.25, center = true);
    //outside
    
    rotate([90, 0, 90])
    translate([4.5, 35, 69.5/2-16.25+1.5]) 
    cube([5.4, 5.4, 3.6], center = true);
    //cylinder(h = 3.6, r = 1.25, center = true);
    //inside
    
    rotate([90, 0, 90])
    translate([4.5, 35, -69.5/2+1.5])
    cylinder(h = 3.6, r = 3.25, center = true);
    //outside
    
    rotate([90, 0, 90])
    translate([4.5, 35, -69.5/2+16.25-1.5])
    cube([5.4, 5.4, 3.6], center = true);
    //cylinder(h = 3.6, r = 1.25, center = true);
    //inside
    
    //slits
    translate([25, 0, 27.5/2+15]) 
    cube([.5, 22.5, 27.75], center = true);
    
    translate([-25, 0, 27.5/2+15]) 
    cube([.5, 22.5, 27.75], center = true);
    
    //connector holes for end
    translate([25, 0, 15/2]) 
    cylinder(h = 15 + 0.1, r = 2, center = true); //screw hole

    translate([-25, 0, 15/2]) 
    cylinder(h = 15 + 0.1, r = 2, center = true); //screw hole
}