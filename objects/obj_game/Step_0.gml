/// @description Keyboardinput and Room Transitions
// Room Transitions
if(room == rm_start) {
    if mouse_check_button_pressed(mb_left) {
        room_goto(rm_game)
    }
}
else if(room == rm_game and game_state == 4) {
    if mouse_check_button_pressed(mb_left) {
        game_restart()
    }
}

// Keyboard Inputs
if(keyboard_check(vk_anykey)) {
    text = text + string(keyboard_string);
    keyboard_string = "";
}

if (keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and delete_text_timer == 2) {
    text = string_delete(text, string_length(text), 1)
    delete_text_timer = 0;
    keyboard_string = "";
}

if (keyboard_check_pressed(vk_backspace)) {
    text = string_delete(text, string_length(text), 1);
	keyboard_string = "";
	delete_text_timer = -4;
}

// Handle Timer
if (delete_text_timer != 2) {
    delete_text_timer ++;
}
// Count Input Timer down
if (input_timer > 0){
    input_timer--;
}
// Allow Input when Timer on 0
can_input = input_timer <= 0 ? true : false;

if (keyboard_check(vk_enter) and game_state == 1 and can_input) {
    bill = set_input_value(text);
	text = "";
	delete_text_timer = -10;
    can_input = false;
    input_timer = 30;
}
    
if(keyboard_check(vk_enter) and game_state == 2 and can_input) {
    tip_percent = set_input_value(text)
	text = "";
	delete_text_timer = -4;
    can_input = false;
    input_timer = 30;
}

if(keyboard_check(vk_enter) and game_state == 3 and can_input) {
    person_count = set_input_value(text)
	text = "";
	delete_text_timer = -4;
    can_input = false;
    input_timer = 30;
}