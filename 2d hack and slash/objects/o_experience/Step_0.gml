if (!instance_exists(o_mainCharacter)){exit;}

var dir = point_direction(x,y,o_mainCharacter.x, o_mainCharacter.y);
var aceleration = 0.25;

motion_add(dir,aceleration);
var maxSpeed = 5;
if(speed > maxSpeed){
	speed = maxSpeed;
};
