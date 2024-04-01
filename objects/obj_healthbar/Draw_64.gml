// Define the position for the health bar
var barX = 10;
var barY = 10;
var barWidth = sprite_get_width(spr_healthbar_bg); // The full width of the health bar
var barHeight = sprite_get_height(spr_healthbar_bg); // The full height of the health bar

// Calculate the health percentage
var healthPercentage = obj_player.player_health / obj_player.maxHealth;

// Draw the health bar background
draw_sprite(spr_healthbar_bg, 0, barX, barY);

// Calculate the width of the health bar foreground
// Assuming there is no padding, the foreground width should be based on the health percentage
var fgWidth = barWidth * healthPercentage;

// Draw the health bar foreground, with the same 'barX' and 'barY' as the background
// Ensure that the foreground sprite is scaled properly based on the percentage of health
draw_sprite_ext(spr_healthbar_fg, 0, barX + 85, barY, healthPercentage, 1, 0, c_white, 1);

// Optionally, draw the text
var txt = string(obj_player.player_health) + " / " + string(obj_player.maxHealth);
var txtX = barX + barWidth / 2 - string_width(txt) / 2;
var txtY = barY + barHeight / 2 - string_height(txt) / 2;

draw_text(txtX, txtY, txt);
