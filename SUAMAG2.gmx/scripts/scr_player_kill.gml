show_debug_message("Player killed " + string(id) + ": " + string(box_health))

switch (box_color)
{
    case 0: global.red = global.red + 1; break;
    case 1: global.blue = global.blue + 1; break;
    case 2: global.green = global.green + 1; break;
    case 3: global.yellow = global.yellow + 1; break;
    case 4: global.pink = global.pink + 1; break;
    case 5: global.cyan = global.cyan + 1; break;
    default: show_debug_message("switch failure in scr_player_kill")
}
