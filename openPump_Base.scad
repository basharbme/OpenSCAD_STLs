$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm

height = 15;
screw_radius = 2;
recess_height = 4;
recess_radius = 4;
displacement = 12.5;

module screw_hole(x) {
    translate([25, displacement*x, height/2]) 
    cylinder(h = height + 0.1, r = screw_radius, center = true); //screw hole
    translate([25, displacement*x, height/2 + 5.5]) 
    cylinder(h = recess_height + 0.1, r = recess_radius, center = true); //recess

    translate([-25, displacement*x, height/2]) 
    cylinder(h = height + 0.1, r = screw_radius, center = true); //screw hole
    translate([-25, displacement*x, height/2 + 5.5])
    cylinder(h = recess_height + 0.1, r = recess_radius, center = true); //recess
}
    

difference() {
    union() {
        //main body
        translate([0, 0, height/2]) 
        cube([69.5, 207, height], center = true);    
    }
    screw_hole(x = -6);
    screw_hole(x = -5);
    screw_hole(x = -4);
    screw_hole(x = -3);
    screw_hole(x = -2);
    screw_hole(x = -1);
    screw_hole(x = 0);
    screw_hole(x = 1);
    screw_hole(x = 2);
    screw_hole(x = 3);
    screw_hole(x = 4);
    screw_hole(x = 5);
    screw_hole(x = 6);
    
    //connector holes for end
    translate([25, 81.5+11, height/2]) 
    cylinder(h = height + 0.1, r = screw_radius, center = true); //screw hole
    translate([25, 81.5+11, height/2 - 5.5]) 
    cylinder(h = recess_height + 0.1, r = recess_radius, center = true); //recess

    translate([-25, 81.5+11, height/2]) 
    cylinder(h = height + 0.1, r = screw_radius, center = true); //screw hole
    translate([-25, 81.5+11, height/2 - 5.5])
    cylinder(h = recess_height + 0.1, r = recess_radius, center = true); //recess
    
    //connector holes for motor
    translate([25, -78.5-12.5, height/2]) 
    cylinder(h = height + 0.1, r = screw_radius, center = true); //screw hole
    translate([25, -78.5-12.5, height/2 - 5.5]) 
    cylinder(h = recess_height + 0.1, r = recess_radius, center = true); //recess

    translate([-25, -78.5-12.5, height/2]) 
    cylinder(h = height + 0.1, r = screw_radius, center = true); //screw hole
    translate([-25, -78.5-12.5, height/2 - 5.5])
    cylinder(h = recess_height + 0.1, r = recess_radius, center = true); //recess
}