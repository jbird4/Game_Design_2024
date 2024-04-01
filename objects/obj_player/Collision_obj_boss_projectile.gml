
player_health -= 10;
if (player_health <= 0) {
    // Player defeat logic here
    instance_destroy();
}

