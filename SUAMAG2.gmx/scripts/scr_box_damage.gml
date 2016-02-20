with (obj_parent_box)
{
    if (box_target != noone)
    {
        box_target.box_health = box_target.box_health - box_damage
        show_debug_message(string(box_target) + ": " + string(box_target.box_health))
    }
    else
    {
        show_debug_message(string(id) + ": skipped turn")
    }
}

with (obj_parent_box)
{
    if (box_health <= 0)
    {
        instance_destroy()
        linked_spawner.linked_box = noone
        show_debug_message(string(id) + ": Box Die")
    }
}

script_execute(scr_box_respawn)
