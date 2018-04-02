///determine_ai_difficulty(intelligence, reflexes, strength, botI, botR, botS)

//Intelligence on a baseline of 1-10
//If bot meets all fields, minimum difficulty will be 7
//If a bot has high of one stat, but low in others, min difficulty will be 3
//This will simulate bots being better at different types of games, and some variation to how AI behaves
//Will expand upon further perhaps, but this simple system is enough for now

var int = argument0
var ref = argument1
var str = argument2
var botI = argument3
var botR = argument4
var botS = argument5

var minDif = 1

if(botI >= int) {
	minDif = minDif + 2	
}

if(botR >= ref) {
	minDif = minDif + 2	
}

if(botS >= str) {
	minDif = minDif + 2	
}

var dif = (botI - int) + (botR - ref) + (botS - str)

if(minDif > dif) {
	dif = minDif	
}

return dif