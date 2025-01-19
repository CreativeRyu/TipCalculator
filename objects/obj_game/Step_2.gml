/// @description Step End Event

if (bill == "" and tip_percent == "" and person_count == "") {
    game_state = 1
}
else if (bill != "" and tip_percent == "" and person_count == "") {
    game_state = 2
}
else if (bill != "" and tip_percent != "" and person_count == "") {
    game_state = 3
}
else if (bill != "" and tip_percent != "" and person_count != "") {
    game_state = 4
}