/// @Beginning Of Each Step spawn spikes till it meets minimum

//find out if there are any spikes

if(instance_number(o_PlaneSpike) < activeSpikes) {	
	if(instance_exists(o_PlaneSpike)) {
		var lastSpike = instance_find(o_PlaneSpike, instance_number(o_PlaneSpike)-1)

		var yVal = 0
		if(!lastSpike.isFlipped) {
			yVal = 0
		} else {
			yVal = room_height - sprite_get_height(s_PlaneSpike)
		}

		var createdSpike = instance_create_depth(lastSpike.x + sprite_get_width(s_PlaneSpike) + averageSpikeDistance, yVal, -199, o_PlaneSpike)	
		createdSpike.isFlipped = !lastSpike.isFlipped
		createdSpike.hspeed = -roomSpeed
		createdSpike.biome = biome
		
	} else {
		//Just spawn my first spike a bit outside the room
		var createdSpike = instance_create_depth(room_width + sprite_get_width(s_PlaneSpike)*4, 0, -199, o_PlaneSpike)
		createdSpike.isFlipped = true
		createdSpike.hspeed = -roomSpeed
		createdSpike.biome = biome
	}
}

if(instance_number(o_PlaneGround) < floorCount*2) {
	var xLoc = instance_find(o_PlaneGround, instance_number(o_PlaneGround)-1).x + sprite_get_width(s_PlaneGround)
	for(var i = 0; i < floorCount*2 - instance_number(o_PlaneGround); i++) {
		var topFloor = instance_create_depth(xLoc, 0 + sprite_get_height(s_PlaneGround), -200, o_PlaneGround)
		var bottomFloor = instance_create_depth(xLoc, room_height - sprite_get_height(s_PlaneGround), -200, o_PlaneGround)
	
		topFloor.isFlipped = true
		topFloor.hspeed = -roomSpeed
		topFloor.biome = biome
		bottomFloor.isFlipped = false
		bottomFloor.hspeed = -roomSpeed
		bottomFloor.biome = biome
	}
	
}
