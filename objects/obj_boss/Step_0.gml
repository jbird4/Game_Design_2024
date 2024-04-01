// Step Event of obj_boss

// Boss movement logic
var _dx = obj_player.x - x;
var _dy = obj_player.y - y;
var _distance = point_distance(x, y, obj_player.x, obj_player.y);

if (_distance > 5) { // Prevents the boss from getting too close
    var _dir = point_direction(x, y, obj_player.x, obj_player.y);
    x += lengthdir_x(moveSpeed, _dir);
    y += lengthdir_y(moveSpeed, _dir);
}

// Update stage based on health
if (health <= 66) stage = 2;

// Execute attack patterns based on the current stage
switch(stage) {
    case 1:
        // Projectile attack
        if (attackCooldown <= 0) {
            instance_create_layer(x, y, "Instances", obj_boss_projectile);
            attackCooldown = room_speed * 2; // Reset cooldown
        }
        break;
    case 2:
        if (attackCooldown <= 0) {
            var spawnX = x;
            var spawnY = y;
            var radius = 3; 
            var foundSpace = false;
            var attempts = 0;

            while (!foundSpace && attempts < 10) {
                var angle = random(360);
                var distance = random_range(0, radius);
                spawnX = x + lengthdir_x(distance, angle);
                spawnY = y + lengthdir_y(distance, angle);

                if (!place_meeting(spawnX, spawnY, obj_boss_minion)) {
                    foundSpace = true;
                    instance_create_layer(spawnX, spawnY, "Instances", obj_boss_minion);
                } else {
                    attempts += 1;
                }
            }
            attackCooldown = room_speed * 3; // Reset cooldown
        }
        break;
}

// Decrease cooldown
attackCooldown -= 1;


