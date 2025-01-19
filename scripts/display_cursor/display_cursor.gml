function display_cursor(text, text_y){
	var text_x = room_width/8 + string_width(text) + 3
	draw_line_width_color(x+text_x, text_y, x+ text_x, text_y +17, 2, c_white, c_white)
}