name = ""

execute_code = function() 
{
	//if party_getname("susie") = true
	if party_contains("susie")
	{
		cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* It's a locker.",
			"{char(susie, 1)}* You trying to see if the babies have anything interesting?",
			"{char(flow, 1)}* Nah.",
			"{char(flow, 0)}* Just looking."
			
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
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
	}
}