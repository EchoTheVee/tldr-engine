name = ""

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* This grill looks like one you'd find in a magazine.",
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}