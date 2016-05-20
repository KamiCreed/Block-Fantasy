right = argument0;
left = argument1;
walkRight = argument2;
walkLeft = argument3;
jumpRight = argument4;
jumpLeft = argument5;
leapRight = argument6;
leapLeft = argument7;
fastSpd = argument8;
slowSpd = argument9;
dist = argument10;
isMob = argument11;

if distance_to_object(block_man) < dist
{
    if sprite_index == right || sprite_index == left
        || hspeed == slowSpd || hspeed == -slowSpd
        if x < block_man.x
        {
            hspeed = fastSpd;
        } // if on the left
        else if x > block_man.x
        {
            hspeed = -fastSpd;
        } // elsif on the right
} // if distance to block_man is less than dist
else
{
    if isMob == true
    {
        if x < block_man.x
        {
            hspeed = fastSpd;
        } // if on the left
        else if x > block_man.x
        {
            hspeed = -fastSpd;
        } // elsif on the right
    } // isMob boolean is true
    else
    {
        i = irandom(30);
        if i == 0 // See if person should wander
        {
            hspeed = 0;
            moveStop(walkRight, walkLeft, right, left);
        } // if
        else if i == 10
            hspeed = slowSpd
        else if i == 20
            hspeed = -slowSpd
    } // else
} // else


if !place_meeting(x + 6, y + 1, obj_floors) && sprite_index == walkRight
    jump(right, left, walkRight, walkLeft, 
        jumpRight, jumpLeft, leapRight, leapLeft);
                    
if !place_meeting(x - 6, y + 1, obj_floors) && sprite_index == walkLeft
    jump(right, left, walkRight, walkLeft, 
        jumpRight, jumpLeft, leapRight, leapLeft);
    
moveWalk(right, left, walkRight, walkLeft, jumpRight, jumpLeft, leapRight, leapLeft);

if (collision_rectangle(x - 35, y - 13, x + 35, y + 13, obj_walls, false, true))
    jump(right, left, walkRight, walkLeft, jumpRight, jumpLeft, leapRight, leapLeft);
    
