// Apply curve to the projectile's direction
direction += curve_amount * curve_direction;

//Destroy the projectile after it moves off-screen
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

// Check for collision with player
if (place_meeting(x, y, obj_player)) {
    instance_destroy(); // Destroy the projectile
}
