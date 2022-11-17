switch (state){
	case "chase":
	#region chase
		if(!instance_exists(o_mainCharacter)){
				exit;
			}
		if(place_meeting(x,y,o_mainCharacter)) && o_mainCharacter.state != "roll" &&  !attacked{
			createHitBox(x,y,self, sprite_index,knockback,1,damage,image_xscale);
			attacked ="true";		
		}
		if(attacked){
			vspeed = -1;
		}	
	#endregion
	break;
	
	case "death":
	#region death
		repeat(6){
		instance_create_layer(x+random_range(-4,4),y-16+random_range(-4,4),"fx",o_feather);
		}
		instance_destroy();
	#endregion
	break;

}
