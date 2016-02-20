with (obj_parent_box)
{
    if (box_target != noone)
    {
        var old_health = box_target.box_health;
        box_target.box_health = box_target.box_health - box_damage
        var new_health = box_target.box_health
        if (old_health > 0 && new_health <= 0)
        {
            show_debug_message(string(id) + ": killed " + string(box_target) + ", healing")
            box_health = box_health + 1
        }
        show_debug_message(string(box_target) + ": " + string(box_target.box_health))
    }
    else
    {
        show_debug_message(string(id) + ": skipped turn, healing")
        box_health = box_health + 1
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
