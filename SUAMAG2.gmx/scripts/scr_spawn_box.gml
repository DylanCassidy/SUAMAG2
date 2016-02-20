/// Caller must be obj_spawner

var randNum = -1
while (1)
{
    randNum = irandom(5)
    if (randNum == previous_color)
    {
        continue
    }
    if (randNum == 0 && global.lock_red)
    {
        global.lock_red_count = global.lock_red_count - 1
        if (global.lock_red_count == 0)
        {
            global.lock_red = 0
        }
    }
    else if (randNum == 1 && global.lock_blue)
    {
        global.lock_blue_count = global.lock_blue_count - 1
        if (global.lock_blue_count == 0)
        {
            global.lock_blue = 0
        }
    }
    else if (randNum == 2 && global.lock_green)
    {
        global.lock_green_count = global.lock_green_count - 1
        if (global.lock_green_count == 0)
        {
            global.lock_green = 0
        }
    }
    else if (randNum == 3 && global.lock_yellow)
    {
        global.lock_yellow_count = global.lock_yellow_count - 1
        if (global.lock_yellow_count == 0)
        {
            global.lock_yellow = 0
        }
    }
    else if (randNum == 4 && global.lock_pink)
    {
        global.lock_pink_count = global.lock_pink_count - 1
        if (global.lock_pink_count == 0)
        {
            global.lock_pink = 0
        }
    }
    else if (randNum == 5 && global.lock_cyan)
    {
        global.lock_cyan_count = global.lock_cyan_count - 1
        if (global.lock_cyan_count == 0)
        {
            global.lock_cyan = 0
        }
    }
    else
    {
        break
    }
}

switch (randNum)
{
    case 0: linked_box = instance_create(x, y, obj_red_box); linked_box.box_color = 0; linked_box.box_enemy = 5; break;
    case 1: linked_box = instance_create(x, y, obj_blue_box); linked_box.box_color = 1; linked_box.box_enemy = 3; break;
    case 2: linked_box = instance_create(x, y, obj_green_box); linked_box.box_color = 2; linked_box.box_enemy = 4; break;
    case 3: linked_box = instance_create(x, y, obj_yellow_box); linked_box.box_color = 3; linked_box.box_enemy = 1; break;
    case 4: linked_box = instance_create(x, y, obj_pink_box); linked_box.box_color = 4; linked_box.box_enemy = 2; break;
    case 5: linked_box = instance_create(x, y, obj_cyan_box); linked_box.box_color = 5; linked_box.box_enemy = 0; break;
    default: show_debug_message("switch failure in scr_spawn_box")
}

linked_box.linked_spawner = id
previous_color = randNum
