$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm

difference() {
    union() {
        //main body
        translate([0, 0, 29.5/2]) 
        cube([69.5, 8, 29.5], center = true);
        
        //top bar
        color("blue")
        translate([0, 0, 6.25+29.5])
        cube([69.5, 8, 12.5], center = true);
   
        //syringe holder
        color("red")
        rotate([90, 0, 0])
        translate([0, 29.5+16.5, 0])
        cylinder(h = 8, r = 16.5, center = true);
    }
    
    //remove top of syringe holder
    translate([0, 0, 57])
    cube([33, 8.1, 14], center = true);
    
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
    cylinder(h = 23, r = 5, center = true);
    
    translate([0, 0, 22/2])
    cube([10, 8+.01, 22+.01], center = true);
    
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
    
    //sink holes for top screws
    rotate([90, 0, 0])
    translate([12.5, 24.5, 2.5]) 
    cylinder(h = 3+.01, r = 2.5, center = true);
    
    rotate([90, 0, 0])
    translate([-12.5, 24.5, 2.5]) 
    cylinder(h = 3+.01, r = 2.5, center = true);
    
    //sink holes for bottom screws
    rotate([90, 0, 0])
    translate([12.5, 3.5, 2.5]) 
    cylinder(h = 3+.01, r = 2.5, center = true);
    
    rotate([90, 0, 0])
    translate([-12.5, 3.5, 2.5]) 
    cylinder(h = 3+.01, r = 2.5, center = true);
    
    //remove bottom corners of main piece
    translate([-69.5/2+16.25/2, 0, 24/2])
    cube([16.26, 8.5, 24+.01], center = true);
       
    translate([69.5/2-16.25/2, 0, 24/2])
    cube([16.26, 8.5, 24+.01], center = true);
    
    //syringe holder circular hole
    rotate([90, 0, 0])
    translate([0, 29.5+16.5, 0])
    cylinder(h = 8+.01, r = 8.1, center = true);
}