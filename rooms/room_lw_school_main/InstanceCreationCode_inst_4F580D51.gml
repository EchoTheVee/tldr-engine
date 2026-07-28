name = ""

execute_code = function() 
{
	if party_contains("susie")
	{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* It's a locker.",
			"* There's a dent in it from Susie slamming into it.",
			"{char(susie, 17)}* I CAN SEE YOU TRYING NOT TO LAUGH DUMBASS!",
			"{char(flow, 4)}* ..."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
	}
	else
	{
		cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* It's a locker.",
			"* There's a dent in it from Susie slamming into it.",
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
	}
}