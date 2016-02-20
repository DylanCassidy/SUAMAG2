randNum = irandom(5)

if (randNum == 0)
{
    linked_box = instance_create(x, y, obj_red_box)
}
else if (randNum == 1)
{
    linked_box = instance_create(x, y, obj_blue_box)
}
else if (randNum == 2)
{
    linked_box = instance_create(x, y, obj_green_box)
}
else if (randNum == 3)
{
    linked_box = instance_create(x, y, obj_yellow_box)
}
else if (randNum == 4)
{
    linked_box = instance_create(x, y, obj_pink_box)
}
else
{
    linked_box = instance_create(x, y, obj_cyan_box)
}
linked_box.linked_spawner = id
