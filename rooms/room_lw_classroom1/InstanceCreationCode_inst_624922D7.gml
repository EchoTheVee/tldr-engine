name = ""
times_interacted = 0

execute_code = function() 
{
	if times_interacted > 0
	{
		cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "{char(flow, 0)}* No.",
        ])
	times_interacted++
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
	}
	else
	{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* There's a bunch of papers on the wall.",
			"* One reads: 'Never give yourself up, or else you'll only let yourself down!'.",
			"{char(flow, 0)}* You've gotta be kidding me."
        ])
		times_interacted++
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
	}
	
	
}