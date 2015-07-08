cherry=14.1;
cherrylip=1.5;
cherryspace=1.8;

capclearh=20;
capclearw=15;

$fn=50;
knuckLen = 100;
keyw= 21;
keyl = 23;
keyd = cherrylip + 6;
transl=(keyl-cherry)/2;
transw=(keyw-cherry)/2;

// left and right braces
translate([52.8,85.35,0])
cube([15,7,keyw]);
translate([-63.35,88,0])
cube([15,7,keyw]);


//pieces
for(z=[65:11.8:120]){
rotate(a= [0,0,z])
translate([knuckLen,-keyl/2,0])
difference(){
	union(){
cube([keyd,keyl,keyw]);
//keycap simulator
//translate([-capclearh,transl/2+cherrylip*2,transw]){
//		cube([capclearh,capclearw,capclearw]);	
//}
//end keycap
}
translate([0,transl,transw]){
cube([keyd,cherry,cherry]);
translate([cherrylip,-cherryspace/2,-cherryspace/2]){
minkowski(){
cube([keyd,cherry,cherry]);
rotate([0,90,0])
translate([-cherryspace/2,cherryspace/2,0])
cylinder(r=cherryspace,h=keyd);
}
}
}
}
}






