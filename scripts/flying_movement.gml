fly_right = argument0;
fly_left = argument1;
if sprite_index == fly_right || sprite_index == fly_left
    move_towards_point(block_man.x, block_man.y, 4);
    
if sprite_index == fly_right && x > block_man.x
    sprite_index = fly_left;
    
else if sprite_index == fly_left && x < block_man.x
    sprite_index = fly_right;
