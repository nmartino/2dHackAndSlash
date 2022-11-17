#region ovniOne
if (ovni_sprite == ovni_one){
if(image_xscale == -1){
x -= x_speed;
}
if(image_xscale == 1){
x += x_speed;
}}
#endregion

#region ovnitwo
if(ovni_sprite == ovni_two){
switch(state){
	case "move":
 	#region move
	setStateSprite(ovni_two,1,0);
	if (ovni_sprite == ovni_two){
		if(image_xscale == -1){
			x -= x_speed;
			if(x <= room_width/2 && abduct == false){
			state = "abduct"
			abduct = true;
			}
		}
		if(image_xscale == 1){
			x += x_speed;
			if(x >= room_width/2 && abduct == false){
			state = "abduct"
			abduct = true;
			}
		}
	}
	#endregion
	break;
	case "abduct":
	#region abduct
	setStateSprite(ovni_two_abduct,1,0);
	if (animationEnd()){
		state = "move";
		}
	#endregion
	break;
}
}
#endregion
