var randNum = irandom(5)
while (randNum == previous_color)
{
    randNum = irandom(5)
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
linked_box.box_target = noone
previous_color = randNum
