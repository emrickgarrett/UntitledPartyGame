/// If the AI doesn't have a plane yet, go ahead and grab it :)

if(plane == undefined) {
	if(playerId != 0) {
		for(var i = 0; i < 4; i++){
			var tempPlane = instance_find(o_PlanePlayer, i)	
			if(tempPlane.playerId == playerId) {
				plane = tempPlane	
				show_debug_message("I AM ALIVE " + string(playerId))
			}
		}
	}
}
