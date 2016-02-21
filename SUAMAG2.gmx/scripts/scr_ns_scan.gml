/// Caller must be obj_parent_ns

var count = 0
var north = 0
var east_1 = 0
var east_2 = 0
var south = 0
var west_1 = 0
var west_2 = 0
var inst = noone
var randNum = 0
var temp_target = noone
box_target_1 = noone
box_target_2 = noone

while (count != 6)
{
    randNum = irandom(5)
    if (randNum == 0 && north == 0)
    {
        inst = instance_position(x+1, y-1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target_1 = inst
                    show_debug_message(string(id) + ": targeting enemy")
                    break
                }
            }
        }
        north = 1
        count = count + 1
    }
    else if (randNum == 1 && east_1 == 0)
    {
        inst = instance_position(x+sprite_width+1, y+1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target_1 = inst
                    show_debug_message(string(id) + ": targeting enemy")
                    break
                }
            }
        }
        east_1 = 1
        count = count + 1
    }
    else if (randNum == 2 && east_2 == 0)
    {
        inst = instance_position(x+sprite_width+1, y+(sprite_height/2)+1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target_1 = inst
                    show_debug_message(string(id) + ": targeting enemy")
                    break
                }
            }
        }
        east_2 = 1
        count = count + 1
    }
    else if (randNum == 3 && south == 0)
    {
        inst = instance_position(x+1, y+sprite_height+1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target_1 = inst
                    show_debug_message(string(id) + ": targeting enemy")
                    break
                }
            }
        }
        south = 1
        count = count + 1
    }
    else if (randNum == 4 && west_1 == 0)
    {
        inst = instance_position(x-1, y+1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target_1 = inst
                    show_debug_message(string(id) + ": targeting enemy")
                    break
                }
            }
        }
        west_1 = 1
        count = count + 1
    }
    else if (randNum == 5 && west_2 == 0)
    {
        inst = instance_position(x-1, y+(sprite_height/2)+1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target_1 = inst
                    show_debug_message(string(id) + ": targeting enemy")
                    break
                }
            }
        }
        west_2 = 1
        count = count + 1
    }
}
if (box_target_1 == noone)
{
    if (temp_target != noone)
    {
        box_target_1 = temp_target
        show_debug_message(string(id) + ": targeting randomly")
    }
    else
    {
        show_debug_message(string(id) + ": not targeting")
    }
}

count = 0
north = 0
east_1 = 0
east_2 = 0
south = 0
west_1 = 0
west_2 = 0
while (count != 6)
{
    randNum = irandom(5)
    if (randNum == 0 && north == 0)
    {
        inst = instance_position(x+1, y-1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target_2 = inst
                    show_debug_message(string(id) + ": targeting enemy")
                    break
                }
            }
        }
        north = 1
        count = count + 1
    }
    else if (randNum == 1 && east_1 == 0)
    {
        inst = instance_position(x+sprite_width+1, y+1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target_2 = inst
                    show_debug_message(string(id) + ": targeting enemy")
                    break
                }
            }
        }
        east_1 = 1
        count = count + 1
    }
    else if (randNum == 2 && east_2 == 0)
    {
        inst = instance_position(x+sprite_width+1, y+(sprite_height/2)+1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target_2 = inst
                    show_debug_message(string(id) + ": targeting enemy")
                    break
                }
            }
        }
        east_2 = 1
        count = count + 1
    }
    else if (randNum == 3 && south == 0)
    {
        inst = instance_position(x+1, y+sprite_height+1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target_2 = inst
                    show_debug_message(string(id) + ": targeting enemy")
                    break
                }
            }
        }
        south = 1
        count = count + 1
    }
    else if (randNum == 4 && west_1 == 0)
    {
        inst = instance_position(x-1, y+1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target_2 = inst
                    show_debug_message(string(id) + ": targeting enemy")
                    break
                }
            }
        }
        west_1 = 1
        count = count + 1
    }
    else if (randNum == 5 && west_2 == 0)
    {
        inst = instance_position(x-1, y+(sprite_height/2)+1, obj_parent_box)
        if (inst != noone)
        {
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target_2 = inst
                    show_debug_message(string(id) + ": targeting enemy")
                    break
                }
            }
        }
        west_2 = 1
        count = count + 1
    }
}
if (box_target_2 == noone)
{
    if (temp_target != noone)
    {
        box_target_2 = temp_target
        show_debug_message(string(id) + ": targeting randomly")
    }
    else
    {
        show_debug_message(string(id) + ": not targeting")
    }
}
