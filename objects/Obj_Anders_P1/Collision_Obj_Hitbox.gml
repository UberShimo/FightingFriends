// Anders ability beefness

if(other.spawner == 2 && action == "ability"){
	HP -= other.dmg;
	Spawn_Hit_Effect(self, other.x, other.y);
}
else{
	event_inherited();
}