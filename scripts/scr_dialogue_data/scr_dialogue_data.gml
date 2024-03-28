
//All Players that speak
var _speakers = {
	player: {
		name: "Player",
		image: spr_apr_player_down
	},
	jack: {
		name: "Jack",
		image: spr_NPC_down
	}
}

global.dialogue = {}

global.dialogue.jack_meet = [
{
	speaker: _speakers.player,
	message: "Hey there, who are you?"
},
{
	speaker: _speakers.jack,
	message: "Oh hi! I'm Jack... And I know who you are."
},
{
	speaker: _speakers.player,
	message: "...Oh, how?"
},
{
	speaker: _speakers.jack,
	message: "You're the musical prodigy everyones talking about"
},
{
	speaker: _speakers.player,
	message: "prodigy?"
}
]
