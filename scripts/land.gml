right = argument0;
left = argument1;
walkRight = argument2;
walkLeft = argument3;
jumpRight = argument4;
jumpLeft = argument5;
leapRight = argument6;
leapLeft = argument7;

switch sprite_index
{
case jumpRight:
case leapRight:
    sprite_index = right;
    hspeed = 0;
    break;
case jumpLeft:
case leapLeft:
    sprite_index = left;
    hspeed = 0;
    break;
} // switch sprite_index

move_contact_solid(270, 15);
vspeed = 0;
