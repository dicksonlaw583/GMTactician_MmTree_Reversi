///@desc Draw status
var yy = y;

// Player piece
draw_sprite(player ? spr_black : spr_white, 0, x, yy);

// Set activeness
draw_set_alpha(active ? 1 : 0.6);

// Name and status
yy += sprite_height;
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_colour(colour);
draw_text(x, yy, label + "\n" + string(points) + "\n\n" + statusText);

// AI progress bar (if applicable)
if (instance_exists(daemon)) {
	yy += string_height("A\nA\n\nA\n");
	draw_healthbar(x-sprite_width/2, yy, x+sprite_width/2, yy+10, daemon.progress*100, c_black, c_white, c_white, 0, true, true);
}

// Reset
draw_set_halign(fa_left);
draw_set_alpha(1);
