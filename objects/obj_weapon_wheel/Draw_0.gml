// Draw Event of obj_weaponWheel
if (showWheel) {
    var wheelX = obj_player.x;
    var wheelY = obj_player.y;

    // Draw the wheel background
    draw_sprite(spr_weapon_wheel, 0, wheelX, wheelY);

    // Draw each weapon icon around the wheel
    for (var i = 0; i < array_length_1d(weaponList); i++) {
        var angle = i * (360 / array_length_1d(weaponList));
        var iconX = wheelX + lengthdir_x(wheelRadius, angle);
        var iconY = wheelY + lengthdir_y(wheelRadius, angle) + (i == 0 ? manualYOffset : 0); // Apply manual offset only to the strings sprite

        // Check if this weapon is selected and change the sprite's scale or color
        var isSelected = (i == selectedWeapon);
        var scale = isSelected ? 1.2 : 1; // Enlarge the selected weapon icon
        var col = isSelected ? c_yellow : c_white; // Highlight the selected weapon icon

        // Draw the weapon sprite
        draw_sprite_ext(weaponList[i], 0, iconX, iconY, scale, scale, 0, col, 1);
    }
}

