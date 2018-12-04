module base()
{
    import("/home/hacker/Projects/scad_modules/profil/base.stl");
}

module profil(height=1)
{
    
    union()
    {
        for (i = [1:1:height])
        {
            translate([0, 0, (i-1)])
            base();
        }
    }
}


module angle_profile_long()
{
    module part_angle()
    {
        difference()
        {
            profil(height=20);
            translate([-21, -10, 0])
            rotate([45, 0, 0])
            cube([41, 30, 20]);
        }
    }
    union()
    {
        part_angle();
        translate([0, -10, 10])
        rotate([90, 0, 180])
        part_angle();
    }
}

module angle_profile_short()
{
    module part_angle()
    {
        difference()
        {
            profil(height=40);
            translate([-20, -11, 0])
            rotate([0, -45, 0])
            cube([60, 21, 40]);
        }
    }
    union()
    {
        part_angle();
        translate([-20, 0, 20])
        rotate([0, -90, 180])
        part_angle();
    }
}