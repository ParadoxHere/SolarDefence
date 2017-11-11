///button_press()

// Makes image speed 0;
image_index = 0;

//Checks if mouse is touching button
if(position_meeting(mouse_x, mouse_y, self)) {
    // If button is being pressed return true
    image_index = 1;
    if(mouse_check_button_pressed(mb_left)) {
        return true;
    }
} else { 
    // Else change to default sprite then return false
    image_index = 0;
    return false;
}

return false;