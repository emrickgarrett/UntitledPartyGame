/// @Initializer for Room

gameProgessionLevel = 1 //Going to on a scale of 1 - 10
server = instance_find(o_PlaneServerHandler, 0)

//Spawn initial spikes?
floorCount = ceil(room_width / sprite_get_width(s_PlaneGround)) + 1


for(var i = 0; i < floorCount; i++) {
	var topFloor = instance_create_depth(lastGroundX, 0 + sprite_get_height(s_PlaneGround), -200, o_PlaneGround)
	var bottomFloor = instance_create_depth(lastGroundX, room_height - sprite_get_height(s_PlaneGround), -200, o_PlaneGround)
	
	topFloor.isFlipped = true
	topFloor.roomSpeed = -roomSpeed
	topFloor.biome = biome
	bottomFloor.isFlipped = false
	bottomFloor.roomSpeed = -roomSpeed
	bottomFloor.biome = biome
	
	lastGroundX += sprite_get_width(s_PlaneGround)
}
