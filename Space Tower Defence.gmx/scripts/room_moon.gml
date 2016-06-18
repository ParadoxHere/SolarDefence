background_visible[1] = true;
background_visible[2] = false;
global.level_floor = bg_moon_floor;
if(instance_exists(obj_floor)) {
    obj_floor.alarm[0] = 1;
}
