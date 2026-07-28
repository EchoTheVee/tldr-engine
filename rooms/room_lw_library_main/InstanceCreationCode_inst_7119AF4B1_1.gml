name = "Computer Lab Room"

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* Looks like a room with a bunch of computers.",
			"* You don't need to try to look something up right now."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}