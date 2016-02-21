/// Caller must be obj_parent_box

var count = 0
var north = 0
var east = 0
var south = 0
var west = 0
var inst = noone
var randNum = 0
var king_box = noone

while (count != 4)
{
    randNum = irandom(3)
    if (randNum == 0 && north == 0)
    {
        inst = instance_position(x+1, y-1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color == box_color)
            {
                switch (box_color)
                {
                    case 0: king_box = instance_create(x, y-128, obj_red_ns); king_box.box_color = 0; king_box.box_enemy = 5; break;
                    case 1: king_box = instance_create(x, y-128, obj_blue_ns); king_box.box_color = 1; king_box.box_enemy = 3; break;
                    case 2: king_box = instance_create(x, y-128, obj_green_ns); king_box.box_color = 2; king_box.box_enemy = 4; break;
                    case 3: king_box = instance_create(x, y-128, obj_yellow_ns); king_box.box_color = 3; king_box.box_enemy = 1; break;
                    case 4: king_box = instance_create(x, y-128, obj_pink_ns); king_box.box_color = 4; king_box.box_enemy = 2; break;
                    case 5: king_box = instance_create(x, y-128, obj_cyan_ns); king_box.box_color = 5; king_box.box_enemy = 0; break;
                    default: show_debug_message("switch failure in scr_king_scan")
                }
                king_box.box_health = box_health + inst.box_health
                king_box.linked_spawner_1 = inst.linked_spawner
                king_box.linked_spawner_2 = linked_spawner
                show_debug_message(string(id) + ": merging")
                break
            }
        }
        north = 1
        count = count + 1
    }
    else if (randNum == 1 && east == 0)
    {
        inst = instance_position(x+sprite_width+1, y+1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color == box_color)
            {
                switch (box_color)
                {
                    case 0: king_box = instance_create(x, y, obj_red_ew); king_box.box_color = 0; king_box.box_enemy = 5; break;
                    case 1: king_box = instance_create(x, y, obj_blue_ew); king_box.box_color = 1; king_box.box_enemy = 3; break;
                    case 2: king_box = instance_create(x, y, obj_green_ew); king_box.box_color = 2; king_box.box_enemy = 4; break;
                    case 3: king_box = instance_create(x, y, obj_yellow_ew); king_box.box_color = 3; king_box.box_enemy = 1; break;
                    case 4: king_box = instance_create(x, y, obj_pink_ew); king_box.box_color = 4; king_box.box_enemy = 2; break;
                    case 5: king_box = instance_create(x, y, obj_cyan_ew); king_box.box_color = 5; king_box.box_enemy = 0; break;
                    default: show_debug_message("switch failure in scr_king_scan")
                }
                king_box.box_health = box_health + inst.box_health
                king_box.linked_spawner_1 = linked_spawner
                king_box.linked_spawner_2 = inst.linked_spawner
                show_debug_message(string(id) + ": merging")
                break
            }
        }
        east = 1
        count = count + 1
    }
    else if (randNum == 2 && south == 0)
    {
        inst = instance_position(x+1, y+sprite_height+1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color == box_color)
            {
                switch (box_color)
                {
                    case 0: king_box = instance_create(x, y, obj_red_ns); king_box.box_color = 0; king_box.box_enemy = 5; break;
                    case 1: king_box = instance_create(x, y, obj_blue_ns); king_box.box_color = 1; king_box.box_enemy = 3; break;
                    case 2: king_box = instance_create(x, y, obj_green_ns); king_box.box_color = 2; king_box.box_enemy = 4; break;
                    case 3: king_box = instance_create(x, y, obj_yellow_ns); king_box.box_color = 3; king_box.box_enemy = 1; break;
                    case 4: king_box = instance_create(x, y, obj_pink_ns); king_box.box_color = 4; king_box.box_enemy = 2; break;
                    case 5: king_box = instance_create(x, y, obj_cyan_ns); king_box.box_color = 5; king_box.box_enemy = 0; break;
                    default: show_debug_message("switch failure in scr_king_scan")
                }
                king_box.box_health = box_health + inst.box_health
                king_box.linked_spawner_1 = linked_spawner
                king_box.linked_spawner_2 = inst.linked_spawner
                show_debug_message(string(id) + ": merging")
                break
            }
        }
        south = 1
        count = count + 1
    }
    else if (randNum == 3 && west == 0)
    {
        inst = instance_position(x-1, y+1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color == box_color)
            {
                switch (box_color)
                {
                    case 0: king_box = instance_create(x-128, y, obj_red_ew); king_box.box_color = 0; king_box.box_enemy = 5; break;
                    case 1: king_box = instance_create(x-128, y, obj_blue_ew); king_box.box_color = 1; king_box.box_enemy = 3; break;
                    case 2: king_box = instance_create(x-128, y, obj_green_ew); king_box.box_color = 2; king_box.box_enemy = 4; break;
                    case 3: king_box = instance_create(x-128, y, obj_yellow_ew); king_box.box_color = 3; king_box.box_enemy = 1; break;
                    case 4: king_box = instance_create(x-128, y, obj_pink_ew); king_box.box_color = 4; king_box.box_enemy = 2; break;
                    case 5: king_box = instance_create(x-128, y, obj_cyan_ew); king_box.box_color = 5; king_box.box_enemy = 0; break;
                    default: show_debug_message("switch failure in scr_king_scan")
                }
                king_box.box_health = box_health + inst.box_health
                king_box.linked_spawner_1 = inst.linked_spawner
                king_box.linked_spawner_2 = linked_spawner
                show_debug_message(string(id) + ": merging")
                break
            }
        }
        west = 1
        count = count + 1
    }
}
if (king_box != noone)
{
    with (inst)
    {
        instance_destroy()
    }
    instance_destroy()
}
