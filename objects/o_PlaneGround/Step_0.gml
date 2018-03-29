/// @Handle Flipping of Sprite and destruction

//Flip Sprite
if(isFlipped) {
	image_yscale = -1
} else {
	image_yscale = 1
}

//Destroy Sprite
if(x < 0 - sprite_get_width(s_PlaneGround)) {
	//show_message("Instance Destroyed! Count - " + string(instance_number(o_PlaneGround)))
	instance_destroy()	
}