/// @Manage Acceleration

if(tapped) {
	//vspeed = 2
	tapped = false
}

if(!accelerating) {
	vspeed += baseGravity
	hspeed -= hAcceleration*2
} else {
	vspeed -= vAcceleration
	hspeed += hAcceleration
}

if(hspeed > maxHSpeed) {
	hspeed = maxHSpeed	
}

if(hspeed < minHSpeed) {
	hspeed = minHSpeed	
}

if(vspeed > maxVSpeed) {
	vspeed = maxVSpeed	
}

if(vspeed < minVSpeed) {
	vspeed = minVSpeed	
}

if(x < 0) {
	x = 0
}

if(vspeed < 0) {
	image_angle = vspeed / minVSpeed * 45
} else {
	image_angle = 0 - vspeed / maxVSpeed * 45
}


