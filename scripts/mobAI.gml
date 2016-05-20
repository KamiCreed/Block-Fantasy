right = argument0;
left = argument1;
walkRight = argument2;
walkLeft = argument3;
jumpRight = argument4;
jumpLeft = argument5;
leapRight = argument6;
leapLeft = argument7;
sped = argument8;

if (sprite_index == right || sprite_index == left ||
        sprite_index == jumpRight || sprite_index == jumpLeft ||
        sprite_index == walkRight || sprite_index == walkLeft ||
        sprite_index == leapRight || sprite_index == leapLeft)
{
    if x < block_man.x
    {
        hspeed = sped;
    }
    else if x > block_man.x
    {
        hspeed = -sped;
    }
}

moveWalk(right, left, walkRight, walkLeft, jumpRight, jumpLeft, leapRight, leapLeft);

if !collision_point(x + 12, y + 20, obj_floors, false, true) && sprite_index == walkRight
    jump(right, left, walkRight, walkLeft, 
        jumpRight, jumpLeft, leapRight, leapLeft);
                    
if !collision_point(x - 12, y + 20, obj_floors, false, true) && sprite_index == walkLeft
    jump(right, left, walkRight, walkLeft, 
        jumpRight, jumpLeft, leapRight, leapLeft);

if (!place_free(x - 12, y) || !place_free(x + 12, y))
    jump(right, left, walkRight, walkLeft, jumpRight, jumpLeft, leapRight, leapLeft);
