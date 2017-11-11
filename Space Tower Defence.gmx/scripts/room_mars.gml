background_visible[1] = false;
background_visible[2] = true;
global.level_floor = bg_mars_floor;
if(instance_exists(obj_floor)) {
    obj_floor.alarm[0] = 1;
}