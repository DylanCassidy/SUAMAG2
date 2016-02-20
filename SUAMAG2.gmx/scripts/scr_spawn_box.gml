randNum = irandom(5)

switch (randNum)
{
    case 0: linked_box = instance_create(x, y, obj_red_box); break;
    case 1: linked_box = instance_create(x, y, obj_blue_box); break;
    case 2: linked_box = instance_create(x, y, obj_green_box); break;
    case 3: linked_box = instance_create(x, y, obj_yellow_box); break;
    case 4: linked_box = instance_create(x, y, obj_pink_box); break;
    case 5: linked_box = instance_create(x, y, obj_cyan_box); break;
    default: show_debug_message("switch failure in scr_spawn_box")
}

linked_box.linked_spawner = id
