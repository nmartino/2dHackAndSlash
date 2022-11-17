if (!instance_exists(other)){exit;}

var dir = point_direction(other.x, other.y,x,y);
var aceleration = 0.25;

motion_add(dir,aceleration);
