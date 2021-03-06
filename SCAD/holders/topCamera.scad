// CEBScan Camera mount Logitech HD 1080
// CEB
//include <topscanmainTemplate.scad>

 


main();

module main() {
   translate([40,-5,-2.5])  rotate ([0,0,90]) top1();
	
	top();
	//translate([0,0,-35]) mount();
 
  
}



module top() {
difference() {
  union() {
  translate([0,0,0]) cube([80,35,5]);
  translate([0,-10,0]) cube([80,10,5]);
  translate([0,-20,0]) cube([80,10,5]);
  translate([0,17.5,2.5]) rotate([0,0,0])  cylinder(h=5, r=17.5, center=true,$fn=100);
  translate([80,17.5,2.5]) rotate([0,0,0])  cylinder(h=5, r=17.5, center=true,$fn=100);
  }
   translate([-13,17.5,17.5]) rotate([0,0,0])  cylinder(h=120, r=1.81, center=true,$fn=100);
   translate([-13,17.5,4]) rotate([0,0,0])  cylinder(h=4.25, r=3, center=true,$fn=100);
   translate([93,17.5,17.5]) rotate([0,0,0])  cylinder(h=120, r=1.81, center=true,$fn=100);
   translate([93,17.5,5]) rotate([0,0,0])  cylinder(h=4.25, r=3, center=true,$fn=100);
   
    translate([14,-14,17.5]) rotate([0,0,0])  cylinder(h=120, r=1.81, center=true,$fn=100);
	translate([14,-14,4]) rotate([0,0,0])  cylinder(h=4.25, r=3, center=true,$fn=100);
    translate([66,-14,17.5]) rotate([0,0,0])  cylinder(h=120, r=1.81, center=true,$fn=100);
	translate([66,-14,4]) rotate([0,0,0])  cylinder(h=4.25, r=3, center=true,$fn=100);
	translate([40,-37,3])   cylinder(h=7, r=25, center=true,$fn=100);  
  }
}


module mount() {
  difference() { 
	union() {
		translate([0,5,0]) cube([80,25,5]);
		translate([0,0,0]) cube([80,5,35]);
		translate([0,30,0]) cube([80,5,35]);
		translate([0,17.5,0]) corner();
		translate([79.9,17.5,0]) rotate ([0,0,180]) corner();
	}
	 translate([40,33,19]) rotate([90,0,0])  cylinder(h=7, r1=10, r2=6.5, center=true,$fn=100);  
	 translate([15,5,0]) cube([20,11.5,10]);
	 translate([15,1,5]) cube([20,4,25]);
	 translate([25,5,30]) rotate([0,90,0])  cylinder(h=20, r=4, center=true,$fn=100);
	 translate([25,5,5]) rotate([0,90,0])  cylinder(h=20, r=4, center=true,$fn=100);
  } 
 
}
 
 module screwmount() {
  difference() {
     translate([-13,0, 17.5])    rotate([0,0,0])   cylinder(h=35, r=4, center=true,$fn=100); 
	 translate([-13,0,17.5])    rotate([0,00,0])   cylinder(h=35, r=1.81, center=true,$fn=100); 
     translate([-13,0, 1.5])    rotate([0,00,0])  cylinder(h=3, r=3.25, center=true,$fn=6); 
  }	 
 }
 
 
 

module corner() {
difference() { 
 union() {
  difference() {
      translate([0,0,17.5]) rotate([0,0,0])  cylinder(h=35, r=17.5, center=true,$fn=100);
	  translate([0,-20,-.5]) cube([40,40,36]);
	  translate([0,0,20]) rotate([0,0,0])  cylinder(h=30.5, r=12.5, center=true,$fn=100);
	  translate([-7,-6,20]) rotate([0,0,0])  cylinder(h=30.5, r=6, center=true,$fn=100); 
	  translate([-7, 6,20]) rotate([0,0,0])  cylinder(h=30.5, r=6, center=true,$fn=100); 
   }
   translate([-13,0, 17.5])    rotate([0,0,0])   cylinder(h=35, r=4, center=true,$fn=100); 
}	
    translate([-13,0,17.5])    rotate([0,00,0])   cylinder(h=35, r=1.81, center=true,$fn=100); 
    translate([-13,0, 1.5])    rotate([0,00,0])  cylinder(h=3, r=3.25, center=true,$fn=6); 
}

}

