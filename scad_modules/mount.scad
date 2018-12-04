module part(color="blue")
{
    union()
    {
        color(color)
        {
            difference()
            {
                
                cube([20, 5, 20], center=true);
                rotate([90, 0, 0])
                cylinder(d1=5, d2=5, h=5.1, center=true);
            }
            
            difference()
            {
                translate([0, 3.5, 0])
                rotate([90, 0, 0])
                cylinder(d1=6.2, d2=9.5, h=2, center=true);

                translate([0, 3.5, 0])
                rotate([90, 0, 0])
                cylinder(d1=5, d2=5, h=2.1, center=true);
            }
        }
    }
}

module mount(hole=1, level=1, angle=false, internal=true, color="blue")
{
    module plate()
    {
        for (i = [0:20:(20*level)-20])
        {
            for (j = [0:20:(20*hole)-20])
            {
                translate([j, 0, (((20*level)-20)+i)-((20*level)-20)])
                part(color);
            }
        }
    }
    if (angle)
    {
        union()
        {
            translate([12.5, 0, 0])
            plate(color);
            for (i = [0:20:(20*level)-20])
            {
                translate([0, 0, (((20*level)-20)+i)-((20*level)-20)])
                color(color)
                {
                    cube([5, 5, 20], center=true);
                }
            }
            if (internal)
            {
                translate([0, -(hole*20)+7.5, 0])
                rotate([0, 0, 90])
                plate(color);
            }
            else
            {
                translate([0, (hole*20)-7.5, 0])
                rotate([0, 0, -90])
                plate(color);
            }
            
        }
    }
    else
    {
        plate(color);
    }
}