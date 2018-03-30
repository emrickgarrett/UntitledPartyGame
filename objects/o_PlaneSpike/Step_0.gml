/// @Handle Flipping of Sprite and destruction

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

switch(biome) {
	case "Dirt":
		image_index = 0
	break;
	case "Ice":
		image_index = 2
	break;
	case "Grass":
		image_index = 1
	break;
	case "Snow":
		image_index = 3
	break;
}