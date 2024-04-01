if (!isDashing) {
    // Chase player normally
    var dir = point_direction(x, y, obj_player.x, obj_player.y);
    x += lengthdir_x(moveSpeed, dir);
    y += lengthdir_y(moveSpeed, dir);
    
    dashCooldown--;
    if (dashCooldown <= 0) {
        isDashing = true;
        playerLastX = obj_player.x;
        playerLastY = obj_player.y;
    }
} else {
    // Dash towards the player's last known position
    var dashDir = point_direction(x, y, playerLastX, playerLastY);
    x += lengthdir_x(dashSpeed, dashDir);
    y += lengthdir_y(dashSpeed, dashDir);
    
    // Stop dashing after reaching near the player's last known position
    if (point_distance(x, y, playerLastX, playerLastY) < 10) {
        isDashing = false;
        dashCooldown = room_speed * 3; // Reset cooldown for next dash
    }
}

// Check for collision with player
if (place_meeting(x, y, obj_player)) {
    instance_destroy();
}



