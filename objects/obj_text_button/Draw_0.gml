///@desc Draw text

// Set alignment, font and colour
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font);
draw_set_colour(hover ? colourHover : colour);

// Draw text
draw_text(x, y, text);

// Reset
draw_set_halign(fa_left);
draw_set_valign(fa_top);
