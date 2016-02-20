with (obj_spawner)
{
    if (linked_box == noone)
    {
        script_execute(scr_spawn_box)
        show_debug_message(string(id) + ": Box Live")
    }
}

with (obj_parent_box)
{
    script_execute(scr_box_scan)
}
