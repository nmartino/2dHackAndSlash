///@arg x
///@arg y
///@arg creator
///@arg sprite
///@arg knockback
///@arg lifespan
///@arg damage
///@arg xscale
function createHitBox(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {

	var x_position = argument0;
	var y_position = argument1;
	var creator = argument2;
	var sprite = argument3;
	var knockback = argument4;
	var lifespan = argument5;
	var damage = argument6;
	var xscale = argument7;

	var hitBox = instance_create_layer(x_position, y_position, "Instances", o_hitBox);
	hitBox.sprite_index = sprite;
	hitBox.creator = creator;
	hitBox.knockback =  knockback;
	hitBox.alarm[0] = lifespan;
	hitBox.damage = damage;
	hitBox.image_xscale = xscale;



}
