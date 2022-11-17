if(!instance_exists(o_mainCharacter)){
	exit;
}
var target_x = o_mainCharacter.x + random_range(-screenShake, screenShake);
var target_y = o_mainCharacter.y - 48 + random_range(-screenShake, screenShake);


x = lerp(x,  target_x , 0.2);
y = lerp(y, target_y, 0.2);

camera_set_view_pos(view_camera[0], x - width/2, y - height/2);
 