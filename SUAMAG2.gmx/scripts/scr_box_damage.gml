show_debug_message("Begin AI")

with (obj_parent_box)
{
    script_execute(scr_box_attack)
}

with (obj_parent_ew)
{
    script_execute(scr_king_attack)
}

with (obj_parent_ns)
{
    script_execute(scr_king_attack)
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

with (obj_parent_ew)
{
    if (box_health <= 0)
    {
        instance_destroy()
        linked_spawner_1.linked_box = noone
        linked_spawner_2.linked_box = noone
        show_debug_message(string(id) + ": Box Die")
    }
}

with (obj_parent_ns)
{
    if (box_health <= 0)
    {
        instance_destroy()
        linked_spawner_1.linked_box = noone
        linked_spawner_2.linked_box = noone
        show_debug_message(string(id) + ": Box Die")
    }
}

script_execute(scr_box_respawn)
