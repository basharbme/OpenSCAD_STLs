$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm

difference() {
    union() {
        //body
        translate([0, 0, 11.25+22])
        cube([44 ,6.5, 11.25], center = true);
        
        rotate([90, 0, 0])
        translate([0, 10.25+18, 0])
        cylinder(h = 6.5, r = 22, center = true);
    }
    
    //remove top part of circle
    translate([0, 0, 15/2+37+2])
    cube([44+.01 ,6.5+.01, 15+0.1], center = true);
    
    //holes in top piece for screws
    rotate([90, 0, 0])
    translate([17.5, 27, 0]) 
    cylinder(h = 6.5+0.1, r = 1.4, center = true);
    
    rotate([90, 0, 0])
    translate([-17.5, 27, 0]) 
    cylinder(h = 6.5+0.1, r = 1.4, center = true);
    
    //remove inner U
    rotate([90, 0, 0])
    translate([0, 5+18, 0])
    cylinder(h = 2+0.1, r = 9.5, center = true);
    
    //center slot
    translate([0, 0, 14+18])
    cube([19, 2, 20], center = true);
    
    //slot from face
    translate([0, 2, 14+18])
    cube([10.5, 3, 20], center = true);
    
    //remove bottom circle
    rotate([90, 0, 0])
    translate([0, 5, 0])
    cylinder(h = 6.5+0.1, r = 5.5, center = true);
    
    //slice bottom off
    translate([0, 0, 8])
    cube([50, 8, 5], center = true);
}