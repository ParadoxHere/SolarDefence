///shakeScreen(intensity)
global.intensity = argument0 + (global.intensity / 6);

if(instance_exists(obj_screen_shake)) {
    with(obj_screen_shake) {
        alarm[0] = 5;
    }
} else {
    instance_create(0, 0, obj_screen_shake);
    shakeScreen(argument0)
}
