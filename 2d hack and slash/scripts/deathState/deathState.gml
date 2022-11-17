///@arg deathSprite
function deathState(argument0) {
	var deathSprite = argument0;

	setStateSprite(deathSprite,0.25, 0);
	friction = true;

	if (image_index >= image_number-1){

		image_index = image_number-1;
		image_speed = 0;
	
		if(image_alpha > 0 ){
			image_alpha -=0.1;
		}else{
			instance_destroy();
		}
	}

	moveAndCollide(knockback_speed,0);
	var knockbackFriction = 0.3;
	knockback_speed = approach(knockback_speed,0,knockbackFriction);



}
