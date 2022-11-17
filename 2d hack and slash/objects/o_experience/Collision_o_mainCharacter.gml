if(!instance_exists(o_mainCharacter)){exit;};

with(other){
	experience += 1;
	if(experience >= max_experience){
	level += 1;
	experience = experience - max_experience;
	max_experience += max_experience;
	maxHp += 5;
	hp = maxHp;
	strength += 5;
	}
}
instance_destroy();
