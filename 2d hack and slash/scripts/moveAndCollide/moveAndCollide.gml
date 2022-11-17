///@arg xspeed
///@arg yspeed
function moveAndCollide(argument0, argument1) {
	var xspeed = argument0;
	var yxpeed = argument1;


	if !place_meeting(x+xspeed,  y, o_wall){
		 x+=xspeed;
	}

	if !place_meeting(x, y+yxpeed, o_wall){
		y+=yxpeed ;
	}


}
