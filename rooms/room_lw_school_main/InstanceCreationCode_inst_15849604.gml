name = ""

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* It's a locker.",
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}