name = "Text test"

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* (Standing here, you interact with this text test box)",
            "* (It feels as though you've figured out how to activate text)",
            "* (Good for you)",
            "* (I think)"
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}