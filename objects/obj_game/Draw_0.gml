/// @description Draw Event
draw_text_transformed(room_width/2 - title_width * 1.5 / 2, 32, title_text, 1.5, 1.5, 0)
draw_text(room_width/2 - string_width("Guten Abend Sir.") / 2, 70, "Guten Abend Sir.")

if (fade_in) {
fade_alpha -= fade_speed; 
if (fade_alpha <= 0.2) {
	fade_alpha = 0.2;
	fade_in = false;
	}
} else {
fade_alpha += fade_speed;
if (fade_alpha >= 1) {
	fade_alpha = 1;
	fade_in = true;
	}
}

switch(room) {
	case rm_start:
		draw_text_transformed_color(room_width/2 - 100, 155, ">>Click Here<<", 1.5, 1.5, 0,c_white, c_aqua, c_aqua,c_white, fade_alpha)
		
		break;
	case rm_game:
		x_position = room_width/8
		y_positions = [105, 130, 155, 180, 205, 230, 255]
        draw_text(x_position, y_positions[0], "Wie hoch war doch gleich ihre Rechnung?")

		if (game_state == 1) {
			display_game_text(x_position, y_positions[1], text, bill)
		}
		else {
			draw_text(x_position, y_positions[1], bill)
		}
		
		if (bill != "") {
			draw_text(x_position, y_positions[2], "Wie viel Prozent Trinkgeld moechten Sie geben Sir?")
		}

        if (game_state == 2) {
			display_game_text(x_position, y_positions[3], text, tip_percent)
		}
		else {
			draw_text(x_position, y_positions[3], tip_percent)
		}

		if (tip_percent != "") {
			draw_text(x_position, y_positions[4], "Auf wie viele Personen moechten Sie die Rechnung aufteilen?")
		}

        if (game_state == 3) {
			display_game_text(x_position, y_positions[5], text, person_count)
		}
		else {
			draw_text(x_position, y_positions[5], person_count)
		}
		
		if (game_state == 4) {
			result = calculate_bill(bill, tip_percent, person_count)
			draw_text(x_position, y_positions[6], "Dann betraegt die Rechnung fuer jeden von ihnen "+ string(result) + " Euro.")
			var restart_width = string_width(">>Restart<<")
			draw_text_transformed_color(room_width/2 - restart_width * 1.1 / 2, 300, ">>Restart<<", 1.1, 1.1, 0,c_white, c_aqua, c_aqua,c_white, fade_alpha)
		}
		
		break;
}