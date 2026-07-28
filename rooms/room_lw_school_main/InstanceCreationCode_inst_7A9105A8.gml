name = ""

execute_code = function() 
{
	//if party_getname("susie") = true
	if party_contains("susie")
	{
		cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "{char(susie, 10)}* Heh, you trying to sneak back to the baby classroom?",
			"{char(susie, 10)}* You and Kris would fit right in.",
			"{char(flow, 0)}* Who's Kris?",
			"{char(susie, 0)}* The weird short one.",
			"{char(flow, 1)}* That doesn't sum it up.",
			"{char(susie, 12)}* Forget it."
			
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
            "* You'd rather not.",
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
	}
}