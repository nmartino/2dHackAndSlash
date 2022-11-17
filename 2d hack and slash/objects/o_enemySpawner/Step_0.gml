var enemyCount = instance_number(o_enemyParent);
if(instance_exists(o_mainCharacter) && enemyCount < o_mainCharacter.kills/4){
		
		if(enemyCount>5){
		exit;
		}
		var enemy = choose(o_EnemyKnight,o_EnemyCrow, o_EnemyCrow);
		
		var new_x = random_range(220, room_width-220);
		
		while(point_distance(new_x, 0, o_mainCharacter.x, 0) < 200){
			new_x = random_range(220, room_width-220);
		}
		instance_create_layer(new_x, o_mainCharacter.y, "instances", enemy);
}
