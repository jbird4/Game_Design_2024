// Step Event of obj_weaponWheel

// Toggle the weapon wheel display with a key press, e.g., 'E'
if keyboard_check_pressed(ord("E")) {
    showWheel = !showWheel;
}

// If the wheel is shown, update the selection based on mouse position
if (showWheel) {
    var wheelX = obj_player.x;
    var wheelY = obj_player.y;
    var mouseAngle = point_direction(wheelX, wheelY, mouse_x, mouse_y);

    // When a weapon is selected (mouse button is released)
    if (mouse_check_button_released(mb_left)) {
        // Perform an action, need to impliment
        global.currentWeapon = selectedWeapon;
        showWheel = false;
    }
}


