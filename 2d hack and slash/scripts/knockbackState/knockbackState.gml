///@arg knockbackSsprite
///@arg	nextState	
///@arg spriteIndex
function knockbackState(argument0, argument1, argument2) {

	var knockbackSsprite = argument0;
	var nextState = argument1;
	var spriteIndex = argument2;

	setStateSprite(knockbackSsprite, 0, spriteIndex);
			moveAndCollide(knockback_speed,0);
			var knockbackFriction = 0.3;
			knockback_speed = approach(knockback_speed,0,knockbackFriction);
			if (knockback_speed == 0){
				knockback_speed = 0;
				state = nextState;
			}


}
