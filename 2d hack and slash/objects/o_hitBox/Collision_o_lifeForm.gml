if(creator == noone || creator == other || (ds_list_find_index(hitObjects, other) != -1) || other.state == "roll"){
	exit; 
}

other.hp -= damage;
repeat(10){
instance_create_layer(other.x,other.y-12,"fx",o_hitFX);
}


if(instance_exists(o_mainCharacter)){ 
	
	if(creator.object_index == o_mainCharacter && other.hp <= 0){
		o_mainCharacter.kills +=1;
	}
	if(other.object_index == o_mainCharacter){
	addScreenShake(8,12);
	}else{
	other.alarm[0] = 120;
	addScreenShake(3,8);
	}

}

ds_list_add(hitObjects, other);

if(other.state != "death"){
other.state = "knockback";}
other.knockback_speed = knockback * image_xscale;


