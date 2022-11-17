
switch (state){
	
	case "chase":
	#region chaseState
		setStateSprite(s_knight_walk, 0.4, 0);
		
		if(!instance_exists(o_mainCharacter)){
				exit;
			}
		image_xscale = sign(o_mainCharacter.x - x);
		
		if(image_xscale == 0){
		image_xscale = 1;
		}
		
		var directionFacing = image_xscale;
		var distanceToPlayer = point_distance(x,y,o_mainCharacter.x,o_mainCharacter.y);
		
		if (distanceToPlayer <= attackRange){
			state = "attack";
			}else{
			moveAndCollide(directionFacing * chaseSpeed,0);			
			}
	#endregion
	break;
		
	case "attack":
 	#region attackState
		setStateSprite(s_knight_attack, 0.6, 0);
		
		if (animationHitFrame(4)){
		createHitBox(x, y, self, s_skeleton_attack_one_damage, 4, 2, 10, image_xscale);
		}
		
		if (animationEnd()){
		state = "chase";
		}
	#endregion
	break;
	
	case "knockback":
	#region Knockback
		knockbackState(s_knight_hitstun, "chase", irandom(image_number));
	#endregion
	break;
	
	case "death":
	#region death
		deathState(s_knight_die)	
	#endregion	
	break;
	
	default:
	#region default
	 show_debug_message("state"+state+"does not exist");
	 state = "chase";
	 #endregion
	break;
}
