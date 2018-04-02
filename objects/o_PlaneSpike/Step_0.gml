/// @Handle Flipping of Sprite and destruction

event_inherited()

//Flip Sprite
if(isFlipped) {
	image_yscale = -1 * abs(image_yscale)
	y = origY - sprite_height
} else {
	image_yscale = abs(image_yscale)
	y = origY - sprite_height + origSpriteHeight
}


//Destroy Sprite
if(x < 0 - sprite_get_width(s_PlaneSpike)) {
	//show_message("Instance Destroyed! Count - " + string(instance_number(o_PlaneGround)))
	instance_destroy()	
}