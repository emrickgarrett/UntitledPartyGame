/// @Beginning Of Each Step spawn spikes till it meets minimum

if(global.gameRunning && !global.gamePaused) {

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
			createdSpike.roomSpeed = -roomSpeed
			createdSpike.biome = biome
		
		} else {
			//Just spawn my first spike a bit outside the room
			var createdSpike = instance_create_depth(room_width + sprite_get_width(s_PlaneSpike)*4, 0, -199, o_PlaneSpike)
			createdSpike.isFlipped = true
			createdSpike.roomSpeed = -roomSpeed
			createdSpike.biome = biome
		}
	}

	if(instance_number(o_PlaneGround) < floorCount*2) {
		var lastFloorInstance = instance_find(o_PlaneGround, instance_number(o_PlaneGround)-1)
		var xLoc = lastFloorInstance.x + sprite_get_width(s_PlaneGround) + lastFloorInstance.hspeed
		for(var i = 0; i < floorCount*2 - instance_number(o_PlaneGround); i++) {
			var topFloor = instance_create_depth(xLoc, 0 + sprite_get_height(s_PlaneGround), -200, o_PlaneGround)
			var bottomFloor = instance_create_depth(xLoc, room_height - sprite_get_height(s_PlaneGround), -200, o_PlaneGround)
	
			topFloor.isFlipped = true
			topFloor.roomSpeed = -roomSpeed
			topFloor.biome = biome
			bottomFloor.isFlipped = false
			bottomFloor.roomSpeed = -roomSpeed
			bottomFloor.biome = biome
		}
	
	}

	if(server.gameSpeed > 2 && server.gameSpeed <= 3) {
		biome = "Grass"	
	} else if(server.gameSpeed > 3 && server.gameSpeed <= 4) {
		biome = "Snow"	
	} else if(server.gameSpeed > 4) {
		biome = "Ice"	
	}

	//reduce averageSpikeDistance slowly until game ends
	averageSpikeDistance = maxSpikeDistance - (server.gameSpeed * 10)
	if(averageSpikeDistance < minimumSpikeDistance) { averageSpikeDistance = minimumSpikeDistance }

}