/// @Initialization Logic -- Spawn Players in the room


//Player1
var player1 = instance_create_depth(0, room_height/2-sprite_get_height(s_BluePlane)*1.5, -1, o_PlanePlayer)
player1.playerId = 1
//Player2
var player2 = instance_create_depth(0, room_height/2-sprite_get_height(s_RedPlane)*.5, -1, o_PlanePlayer)
player2.playerId = 2
//Player3
var player3 = instance_create_depth(0, room_height/2+sprite_get_height(s_GreenPlane)*.5, -1, o_PlanePlayer)
player3.playerId = 3
//Player4
var player4 = instance_create_depth(0, room_height/2+sprite_get_height(s_YellowPlane)*1.5, -1, o_PlanePlayer)
player4.playerId = 4