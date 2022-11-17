event_inherited();
state = "chase"
hp = 1;
maxHp = hp;
image_speed = 0.5;
hspeed = random_range(1,2);

if(instance_exists(o_mainCharacter)){
	hspeed *= sign(o_mainCharacter.x - x);
}
image_xscale = sign(hspeed);
damage = 5;
attacked = false;
experience = 2;
knockback = 4;