keywidth=21.5;
wide=keywidth*3;
wlip = 5;
tall=20;
tallest = 25;
long=130;
lip = 13;
jog = 7.5;
braceheight=7;

translate([wide,0,0]) cube([wlip,long, tall + braceheight]);
translate([-keywidth-wlip,jog,0]) cube([wlip,long, tallest + braceheight]);

translate([-jog,0,0]) cube([jog,jog,tall]);
translate([0,long,0]) cube([jog,jog,tall]);


difference(){
cube([wide+wlip,long, tall]);
translate([0,lip/2,0])
cube([wide, long-lip,tall]);
}

translate([-keywidth-wlip,jog,0])
difference(){
cube([keywidth+wlip,long, tallest]);
translate([wlip,lip/2,0])
cube([keywidth, long-lip,tallest]);
}


