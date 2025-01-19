// displays the game text
function display_game_text(x_pos, y_pos, text, value) {
	draw_text(x_pos, y_pos, text);
	if alarm[0] {
		display_cursor(text, y_pos);
	}
}