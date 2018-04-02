/// @description Insert description here
hspeed = roomSpeed * server.gameSpeed

if(abs(hspeed) > maxSpeed) { hspeed = -maxSpeed }

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
