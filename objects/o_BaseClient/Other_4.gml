/// Create Client Object based on which room the user is in

if(!is_undefined(playerObject)) {
	instance_destroy(playerObject)	
}

switch(room) {
	case r_PlaneGame:
		show_debug_message("I would create a Plane Client")
		playerObject = instance_create_depth(-100,-100,999,o_PlaneClient)
		playerObject.ServerData = ServerData
	break;
	default:
		show_debug_message("I shouldn't create a client here")
	break;
}
