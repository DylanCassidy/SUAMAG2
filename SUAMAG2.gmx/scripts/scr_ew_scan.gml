/// Caller must be obj_parent_ew

var count = 0
var north_1 = 0
var north_2 = 0
var east = 0
var south_1 = 0
var south_2 = 0
var west = 0
var inst = noone
var randNum = 0
var temp_target = noone
box_target_1 = noone
box_target_2 = noone

while (count != 6)
{
    randNum = irandom(5)
    if (randNum == 0 && north_1 == 0)
    {
        inst = instance_position(x+1, y-1, all)
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
        north_1 = 1
        count = count + 1
    }
    else if (randNum == 1 && north_2 == 0)
    {
        inst = instance_position(x+(sprite_width/2)+1, y-1, all)
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
        north_2 = 1
        count = count + 1
    }
    else if (randNum == 2 && east == 0)
    {
        inst = instance_position(x+sprite_width+1, y+1, all)
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
        east = 1
        count = count + 1
    }
    else if (randNum == 3 && south_1 == 0)
    {
        inst = instance_position(x+1, y+sprite_height+1, all)
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
        south_1 = 1
        count = count + 1
    }
    else if (randNum == 4 && south_2 == 0)
    {
        inst = instance_position(x+(sprite_width/2)+1, y+sprite_height+1, all)
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
        south_2 = 1
        count = count + 1
    }
    else if (randNum == 5 && west == 0)
    {
        inst = instance_position(x-1, y+1, all)
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
        west = 1
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
north_1 = 0
north_2 = 0
east = 0
south_1 = 0
south_2 = 0
west = 0
while (count != 6)
{
    randNum = irandom(5)
    if (randNum == 0 && north_1 == 0)
    {
        inst = instance_position(x+1, y-1, all)
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
        north_1 = 1
        count = count + 1
    }
    else if (randNum == 1 && north_2 == 0)
    {
        inst = instance_position(x+(sprite_width/2)+1, y-1, all)
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
        north_2 = 1
        count = count + 1
    }
    else if (randNum == 2 && east == 0)
    {
        inst = instance_position(x+sprite_width+1, y+1, all)
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
        east = 1
        count = count + 1
    }
    else if (randNum == 3 && south_1 == 0)
    {
        inst = instance_position(x+1, y+sprite_height+1, all)
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
        south_1 = 1
        count = count + 1
    }
    else if (randNum == 4 && south_2 == 0)
    {
        inst = instance_position(x+(sprite_width/2)+1, y+sprite_height+1, all)
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
        south_2 = 1
        count = count + 1
    }
    else if (randNum == 5 && west == 0)
    {
        inst = instance_position(x-1, y+1, all)
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
        west = 1
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
