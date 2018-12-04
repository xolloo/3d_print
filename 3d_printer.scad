include </home/hacker/Projects/scad_modules/mount.scad>
include </home/hacker/Projects/scad_modules/profil/profil_20x40.scad>
module table()
{
    union()
    {
        translate([10, 20, 0])
        rotate([-90, -90, 0])
        profil(height=460);
        
        translate([490, 20, 0])
        rotate([-90, -90, 0])
        profil(height=460);
            
        translate([480, 10, 0])
        rotate([-90, -90, 90])
        profil(height=460);
        
        translate([480, 490, 0])
        rotate([-90, -90, 90])
        profil(height=460);
    }
}

table();








