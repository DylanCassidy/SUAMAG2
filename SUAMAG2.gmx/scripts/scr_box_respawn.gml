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
    script_execute(scr_king_scan)
}

show_debug_message("Begin scr_box_scan")

with (obj_parent_box)
{
    script_execute(scr_box_scan)
}

show_debug_message("Begin scr_ew_scan")

with (obj_parent_ew)
{
    script_execute(scr_ew_scan)
}

show_debug_message("Begin scr_ns_scan")

with (obj_parent_ns)
{
    script_execute(scr_ns_scan)
}

show_debug_message("Done AI")
