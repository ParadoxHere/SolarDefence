///init()
gj_init();

// Play variables
global.Score = 0;
global.money = 100;
global.wave = 4;
global.maxHealth = 200;
global.Health = global.maxHealth;
global.startwave = false;
global.selectedTower = noone;
global.dragging = false;

/*
    3 - Hard
    2 - Medium
    1 - Easy
*/
global.difficulty = 1;

// Boss
global.bossHealth = 0;
global.bossStarted = false;

// Volume
global.audio_em = audio_emitter_create();
global.masterVolume = 1;
global.ambientVolume = .5;
global.effectVolume = .5;

// Other
global.intensity = 0;
global.pause = false;
global.background_speed = -.2;
global.room_level = room_moon;
global.level_floor = bg_moon_floor;
global.show_fps = false;

room_goto_next();