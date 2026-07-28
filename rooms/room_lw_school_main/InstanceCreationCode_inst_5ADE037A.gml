name = ""

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* It's a decorated locker.",
			"* So cool.",
			"* So cool.",
			"* So cool.",
			"* Okay it's not actually cool."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}