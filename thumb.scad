wide=65;
long=75;
lip=7;
tall=15;
toplip=3;

keyext=long*.6;
cherry=14.1;
cherrylip=1.48;
cherryspace=1.8;
keyspace = 19.5;


$fa = 1;
difference(){
    cylinder(h=tall,r=long);
    translate([0,-long,0]) cube([long*2,long*2,tall]);
    translate([-long,-long*2,0]) cube([long*2,long*2,tall]);
    //linear_extrude(height=tall-cherrylip) polygon([[-lip,lip],[-long+lip,lip],[-lip,long-lip]]);
    translate([-lip/2,lip/2,0]) difference(){
        cylinder(h=tall-toplip,r=long-lip);
        translate([0,-long,0]) cube([long*2,long*2,tall]);
        translate([-long,-long*2,0]) cube([long*2,long*2,tall]);
    }
    translate([-lip*1.5,long*.6,0])
    rotate(a=[0,0,40])    
    for (t = [0:2]){
        translate([-t*keyspace,0,0]){
        translate([-cherry,-cherry/2,0])
        cube([cherry,cherry,tall]);        
        translate([-cherry-1,-cherry/2-1,-cherrylip])
        cube([cherry+2,cherry+2,tall]);}
        
    }
    
}

