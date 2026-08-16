name = ""

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "{char(flow, 1)}* Yo.",
			"* Just wanted to letcha know, there's a fangame in the works.",
			"* You should stick around to see it's development.",
			"* Ight. Ciao."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}