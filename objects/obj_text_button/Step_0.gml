///@desc Check for hovers and clicks
draw_set_font(font);
var semiTextWidth = string_width(text)/2;
var semiTextHeight = string_height(text)/2;
hover = point_in_rectangle(mouse_x, mouse_y, x-semiTextWidth, y-semiTextHeight, x+semiTextWidth, y+semiTextHeight);
if (hover && mouse_check_button_released(mb_left)) {
	audio_play_sound(snd_click, 1, false);
	onClick();
}
