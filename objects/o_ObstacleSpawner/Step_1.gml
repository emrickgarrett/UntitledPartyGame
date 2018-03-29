/// @Beginning Of Each Step spawn spikes till it meets minimum

//find out if there are any spikes
/*
if(instance_number(o_PlaneSpike) < activeSpikes) {
	instance_create_depth(room_width + sprite_get_width(s_PlaneGround), 0, -999, o_PlaneSpike)	
}

if(instance_number(o_PlaneGround) < floorCount*2) {
	for(var i = 0; i < floorCount*2 - instance_number(o_PlaneGround); i++) {
		var topFloor = instance_create_depth(lastGroundX, 0 + sprite_get_height(s_PlaneGround), -200, o_PlaneGround)
		var bottomFloor = instance_create_depth(lastGroundX, room_height - sprite_get_height(s_PlaneGround), -200, o_PlaneGround)
	
		topFloor.isFlipped = true
		topFloor.hspeed = -roomSpeed
		bottomFloor.isFlipped = false
		bottomFloor.hspeed = -roomSpeed
	}
	
}
*/