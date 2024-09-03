//Zettelkasten / slipbox note holder
//Designed by David Herrera
//If you find anything I produce useful. Consider sending some love.
//venmo @davidherrera55
//shib 0xA7315166a9ccC2682e8c25D66EA7c5e3d7563c40
//eth 0xA7315166a9ccC2682e8c25D66EA7c5e3d7563c40
//btc bc1qvaehlavm6w3tygf8rfmkea9keumv3mzt4y8and


//holder();
//shelf();
//divider();
ends();
//holder should be ~130mm wide and 215mm long for the bottom
//holder needs to rise 20mm and hold 128mm cards
//holder should have slots every 20mm for separators to slot in.
//wall shelf sould be 135mm wide and 220mm 


module holder(){
//base
difference(){
    union(){
            linear_extrude(4)square([134,215]);
            translate([0,0,4])linear_extrude(4)square([134,215]);
                    //bookends
                    translate([2,0,0])linear_extrude(12)square([130,2]);
                    translate([2,213,0])linear_extrude(12)square([130,2]);
            }
            translate([3,2,4])linear_extrude(8)square([128,211]);
            translate([12,2,0])linear_extrude(8)square([110,211]);
            //slits
            translate([2,20,2])linear_extrude(12)square([130,2]);
            translate([2,40,2])linear_extrude(12)square([130,2]);
            translate([2,60,2])linear_extrude(12)square([130,2]);
            translate([2,80,2])linear_extrude(12)square([130,2]);
            translate([2,100,2])linear_extrude(12)square([130,2]);
            translate([2,120,2])linear_extrude(12)square([130,2]);
            translate([2,140,2])linear_extrude(12)square([130,2]);
            translate([2,160,2])linear_extrude(12)square([130,2]);
            translate([2,180,2])linear_extrude(12)square([130,2]);
            translate([2,200,2])linear_extrude(12)square([130,2]);          
            }
}


module shelf(){
    difference(){
                translate([-2,0,-4])linear_extrude(80)square([139,220]);
                translate([0,0,0])linear_extrude(80)square([135,215]);
                translate([7,5,-4])linear_extrude(4)square([120,210]);
                rotate([19,0,0])translate([-2,0,0])linear_extrude(142)square([139,260]);
        //screw holes
        rotate([90,0,0])translate([67.5,15,-220])cylinder(d=2,h=10,$fn=360);
        rotate([90,0,0])translate([67.5,55,-220])cylinder(d=2,h=10,$fn=360);
        #rotate([90,0,0])translate([37.5,35,-220])cylinder(d=2,h=10,$fn=360);
        #rotate([90,0,0])translate([97.5,35,-220])cylinder(d=2,h=10,$fn=360);

    }
    
}

module divider(){
                translate([0,0,2])linear_extrude(1.8)square([130,80]);

    
}

module ends(){
    difference(){

        translate([2,0,0])linear_extrude(80)square([130,5]);
        holder();
    }
}