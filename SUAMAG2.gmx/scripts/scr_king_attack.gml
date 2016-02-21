if (box_target_1 != noone)
{
    var old_health = box_target_1.box_health;
    box_target_1.box_health = box_target_1.box_health - box_damage
    var new_health = box_target_1.box_health
    if (old_health > 0 && new_health <= 0)
    {
        show_debug_message(string(id) + ": killed " + string(box_target_1) + ", healing")
        box_health = box_health + global.king_kill_heal
    }
    show_debug_message(string(box_target_1) + ": " + string(box_target_1.box_health))
}
else
{
    show_debug_message(string(id) + ": skipped turn, healing")
    box_health = box_health + global.king_sit_heal
}
if (box_target_2 != noone)
{
    var old_health = box_target_2.box_health;
    box_target_2.box_health = box_target_2.box_health - box_damage
    var new_health = box_target_2.box_health
    if (old_health > 0 && new_health <= 0)
    {
        show_debug_message(string(id) + ": killed " + string(box_target_2) + ", healing")
        box_health = box_health + global.king_kill_heal
    }
    show_debug_message(string(box_target_2) + ": " + string(box_target_2.box_health))
}
else
{
    show_debug_message(string(id) + ": skipped turn, healing")
    box_health = box_health + global.king_sit_heal
}

var randNum = irandom(global.king_attack_liklyhood)
if (randNum == 0)
{
    global.player_health = global.player_health - box_damage
    show_debug_message(string(id) + ": attack player")
}
