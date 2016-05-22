///tower_menu_delete()

// If tower drag button exists delete it
if(instance_exists(obj_tower_drag)) {
    with(obj_tower_drag) {
        instance_destroy();
    }
}

// If tower sell button exists delete it
if(instance_exists(obj_tower_sell)) {
    with(obj_tower_sell) {
        instance_destroy();
    }
}

// If tower health button exists delete it
if(instance_exists(obj_tower_health)) {
    with(obj_tower_health) {
        instance_destroy();
    }
}

// If tower upgrade button exists delete it
if(instance_exists(obj_tower_upgrade)) {
    with(obj_tower_upgrade) {
        instance_destroy();
    }
}