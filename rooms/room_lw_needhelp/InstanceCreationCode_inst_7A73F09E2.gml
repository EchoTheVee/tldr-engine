name = ""

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "{char(flow, 1)}* (Shit, wrong side.)",
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}