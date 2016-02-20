var count = 0
var north = 0
var east = 0
var south = 0
var west = 0
var inst = noone
var randNum = 0
var temp_target = noone
box_target = noone

while (count != 4)
{
    randNum = irandom(3)
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
                    box_target = inst
                    break
                }
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
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target = inst
                    break
                }
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
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target = inst
                    break
                }
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
            if (inst.box_color != box_color)
            {
                temp_target = inst
                if (inst.box_color == box_enemy)
                {
                    box_target = inst
                    break
                }
            }
        }
        west = 1
        count = count + 1
    }
}
if (box_target == noone)
{
    box_target = temp_target
}
