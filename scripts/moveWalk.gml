// moveWalk(right, left, walkRight, walkLeft, 
// jumpRight, jumpLeft, leapRight, leapLeft)
right = argument0;
left = argument1;
walkRight = argument2;
walkLeft = argument3;
jumpRight = argument4;
jumpLeft = argument5;
leapRight = argument6;
leapLeft = argument7;

if hspeed > 0
{
    switch sprite_index
    {
    case walkLeft:
    case right:
    case left:
        sprite_index = walkRight;
        break;
    case leapRight:
    case leapLeft:
    case jumpRight:
    case jumpLeft:
        sprite_index = leapRight;
        break;
    } // switch sprite_index
} // if hspeed right
else if hspeed < 0
{
    switch sprite_index
    {
    case walkRight:
    case right:
    case left:
        sprite_index = walkLeft;
        break;
    case leapRight:
    case leapLeft:
    case jumpRight:
    case jumpLeft:
        sprite_index = leapLeft;
        break;
    } // switch sprite_index
} // else if hspeed left
