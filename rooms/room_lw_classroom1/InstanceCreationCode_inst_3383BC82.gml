name = ""

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* This desk seems to be held together by screws and glue.",
			"* Best leave it to it's memories of being whole."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}