show_debug_message("Player killed " + string(id) + ": " + string(box_health))

switch (box_color)
{
    case 0: global.red = global.red + box_difficulty; break;
    case 1: global.blue = global.blue + box_difficulty; break;
    case 2: global.green = global.green + box_difficulty; break;
    case 3: global.yellow = global.yellow + box_difficulty; break;
    case 4: global.pink = global.pink + box_difficulty; break;
    case 5: global.cyan = global.cyan + box_difficulty; break;
    default: show_debug_message("switch failure in scr_player_kill")
}

global.player_health = global.player_health + 1
