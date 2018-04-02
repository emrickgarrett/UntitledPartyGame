/// @Initialize Player Objects

event_inherited()

playerStatus = [true, true, true, true] //true means alive
playerLocations = [[0,0],[0,0],[0,0],[0,0]] //Will need to update this with the player coordinates
alarm[0] = 2*room_speed;

humanPlayers = 0
maxPlayers = 4
//Change this to a network call instead?
if(instance_exists(o_BaseServer)) {
	humanPlayers = instance_find(o_BaseServer, 0).humanPlayers	
	maxPlayers = instance_find(o_BaseServer, 0).maxPlayers
} else {
	show_message("Server Not Found")	
}

for(var i = 0; i < maxPlayers - humanPlayers; i++) {
	var ai = instance_create_depth(-100,-100,999,o_PlaneAI)
	ai.playerId = maxPlayers-i
	ai.reflexes = 7
	ai.strength = 3
	ai.intellect = 2
}

