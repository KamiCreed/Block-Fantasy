right = argument0;
left = argument1;
walkRight = argument2;
walkLeft = argument3;
bossHearts = argument4;

if bossHearts <= 35 && instance_number(obj_greyZombie) < 5 && instance_number(obj_mobSkull) < 7
{
    ran = irandom(69);
    if ran == 0
    {
        instance_create(x + irandom_range(-50, 50), y - irandom(60), obj_greyZombie);
        instance_create(x + irandom_range(-50, 50), y + 15, obj_mobSkull);
    } // if ran is 0
    else if ran == 20
    {
        instance_create(x + irandom_range(-50, 50), y - irandom(60), obj_greyZombie);
        instance_create(496, 96, obj_mobSkull);
    }
    
    r = irandom(299)
    if r == 0
        instance_create(496, 96, obj_greyZombie);
} // bossHearts less than and enemy instances does not exist

if (sprite_index == right || sprite_index == left ||
    sprite_index == walkRight || sprite_index == walkLeft)
{

    if (((bossHearts > 20 || bossHearts <= 10) && x < block_man.x) || 
        (bossHearts <= 20 && bossHearts > 10 && x > block_man.x))
    {
        hspeed = 2;
    } // if on the left
    
    if (((bossHearts > 20 || bossHearts <= 10) && x > block_man.x) || 
        (bossHearts <= 20 && bossHearts > 10 && x < block_man.x))
    {
        hspeed = -2;
    } // if on the right
    
}
        
moveWalk(right, left, walkRight, walkLeft, right, 
    left, walkRight, walkLeft);
