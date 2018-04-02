/// @Initialization Logic -- Spawn Players in the room
server = instance_find(o_PlaneServerHandler, 0)

//Player1
var player1 = instance_create_depth(0, room_height/2-sprite_get_height(s_BluePlane)*1.5, -1, o_PlanePlayer)
player1.playerId = 1
server.playerLocations[0] = [player1.x, player1.y]
//Player2
var player2 = instance_create_depth(0, room_height/2-sprite_get_height(s_RedPlane)*.5, -1, o_PlanePlayer)
player2.playerId = 2
server.playerLocations[1] = [player2.x, player2.y]
//Player3
var player3 = instance_create_depth(0, room_height/2+sprite_get_height(s_GreenPlane)*.5, -1, o_PlanePlayer)
player3.playerId = 3
server.playerLocations[2] = [player3.x, player3.y]
//Player4
var player4 = instance_create_depth(0, room_height/2+sprite_get_height(s_YellowPlane)*1.5, -1, o_PlanePlayer)
player4.playerId = 4
server.playerLocations[3] = [player4.x, player4.y]