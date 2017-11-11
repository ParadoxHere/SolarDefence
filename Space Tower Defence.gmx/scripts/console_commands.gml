///console_commands()

/*
    In-Game syntax
    [command=argument0,argument1,...]
*/

if(command_type == "money_add") {

    global.money += real(command_argument[0]);
    return 1;
}

if(command_type == "money_take") {
    global.money -= real(command_argument[0]);
    return 1;
}

if(command_type == "money_set") {
    global.money = real(command_argument[0]);
    return 1;
}

if(command_type == "wave_add") {
    global.wave += real(command_argument[0]);
    global.startwave = true;
    with(obj_asteroid_controll) {
        waveAsteroids = wantedWaveAsteroids;
    }
    return 1;
}

if(command_type == "wave_take") {
    global.wave -= real(command_argument[0]);
    global.startwave = true;
    with(obj_asteroid_controll) {
        waveAsteroids = wantedWaveAsteroids;
    }
    return 1;
}

if(command_type == "wave_set") {
    global.wave = real(command_argument[0]);
    global.startwave = true;
    with(obj_asteroid_controll) {
        waveAsteroids = wantedWaveAsteroids;
    }
    return 1;
}

if(command_type == "health_add") {
    global.Health += global.maxHealth * (real(command_argument[0]) / 100);
    if(global.Health > global.maxHealth) {
        global.Health = global.maxHealth;
    }
    return 1;
}

if(command_type == "health_take") {
    global.Health -= global.maxHealth * (real(command_argument[0]) / 100);
    if(global.Health < 0) {
        global.Health = global.maxHealth;
    }
    return 1;
}

if(command_type == "health_set") {
    global.Health = global.maxHealth * (real(command_argument[0]) / 100);
    if(global.Health < 0) {
        global.Health = global.maxHealth;
    }
    
    if(global.Health > global.maxHealth) {
        global.Health = global.maxHealth;
    }
    return 1;
}

if(command_type == "level_set") {
    if(command_argument[0] == "moon") {
        global.room_level = room_moon;
    } else if(command_argument[0] == "mars") {
        global.room_level = room_mars;
    }
    script_execute(global.room_level);
    return 1;
}

return 0;