// Jumping script put in sprite arguments
// Right sprite, Left sprite, Jump Right sprite, Jump Left sprite
right = argument0;
left = argument1;
walkRight = argument2;
walkLeft = argument3;
jumpRight = argument4;
jumpLeft = argument5;
leapRight = argument6;
leapLeft = argument7;

if place_meeting(x, y+1, obj_floors)
{
    vspeed = -15
    
    switch (sprite_index)
    {
    case right:
        sprite_index = jumpRight;
        break;
    case left:
        sprite_index = jumpLeft;
        break;
    case walkRight:
        sprite_index = leapRight;
        break;
    case walkLeft:
        sprite_index = leapLeft;
        break;
    } // switch sprite_index
} // if collision with floors
