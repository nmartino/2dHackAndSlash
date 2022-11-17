 switch (state){

	case "move":
	#region moveState
		if(input.right){
			moveAndCollide(run_speed,0);
			image_xscale = 1;
			setStateSprite(s_skeleton_run, 0.4, 0);
		}

		if(input.left){
			 moveAndCollide(-run_speed,0);
			image_xscale = -1;
			setStateSprite(s_skeleton_run, 0.4, 0);
		}
		if !input.right && !input.left{
			setStateSprite(s_skeleton_idle, 0.4, 0);
		}
		if (input.roll){
			state = "roll";		
		}
		if (input.attack){
			state ="attack one"
		}
	#endregion
	break;
		
	case "roll":          
 	#region rollState
		setStateSprite(s_skeleton_roll, 0.8, 0);
	
		if ((image_xscale == 1)){
			moveAndCollide(roll_speed ,0);
		}
	
		if ((image_xscale == -1)){
			moveAndCollide(-roll_speed,0);
		}
	
		if (animationEnd()){
			state = "move"
		}
	#endregion
	break;
		
	case "attack one":
	#region attackOne
		setStateSprite(s_skeleton_attack_one, 0.8, 0);
	
		if (animationHitFrame(0)){
		createHitBox(x, y, self, s_skeleton_attack_one_damage, 3, 2, 5, image_xscale);
		}
	
		if (input.attack && AnimationHiFrameRange(2 ,4)){
			state ="attack two"
		}
		if (animationEnd()){
			state = "move"
		}	
	#endregion
	break;
	
	case "attack two":
	#region attackTwo
		setStateSprite(s_skeleton_attack_two, 0.8, 0);
	
		if (animationHitFrame(1)){
		createHitBox(x, y, self, s_skeleton_attack_two_damage, 3, 2, 5, image_xscale);
		}
	
		if (input.attack && AnimationHiFrameRange(2, 4)){
			state ="attack three"
		}
		if (animationEnd()){
			state = "move"
		}
	#endregion
	break;
	
	case "attack three":
 	#region attackThree
		setStateSprite(s_skeleton_attack_three, 0.8, 0);
	
		if (animationHitFrame(2)){
		createHitBox(x, y, self, s_skeleton_attack_three_damage, 4, 2, 8, image_xscale);
		}
	
		if (animationEnd()){
			state = "move"
		}

	#endregion
	break;
	
	case "knockback":
	#region knockback
		knockbackState(s_skeleton_hitstun, "move", irandom(image_number));
	#endregion
	break;
	
	case "death":
	#region Death
		var number = sprite_get_number(s_skeleton_bones);
		for(var i = 0; i<number; i++){
			var bx = other.x + random_range(-8,8);
			var by = other.y + random_range(-24,8);
			var bone = instance_create_layer(bx,by,"Instances",o_skeletonBones);
			bone.direction = 90 - (o_hitBox.image_xscale*random_range(30,60));
			bone.speed = random_range(3,10);
			bone.image_index = i;
			if(i == 5){
			bone.image_angle = 130;
			}
		}
		addScreenShake(10,10);
		instance_destroy();
	#endregion
	break;
	
	default:
	#region default
		 show_debug_message("state"+state+"does not exist");
		 state = "move";
	#endregion
	break;
}