walkRight = argument0;
walkLeft = argument1;
right = argument2;
left = argument3;

if place_meeting(x, y + 1, obj_floors)
{
    switch (sprite_index)
    {
    case walkRight:
        sprite_index = right;
        break;
    case walkLeft:
        sprite_index = left;
        break;
    } // switch sprite_index
} // if collision with floor
