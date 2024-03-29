player_health -= 20;
if (player_health <= 0) {
    // Player defeat logic here
    instance_destroy();
}


