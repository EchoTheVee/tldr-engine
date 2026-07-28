name = ""

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	if party_contains("susie")
	{
	cutscene_dialogue([
            "{char(flow, 1)}* Big ass closet.",
			"{char(susie, 10)}* Heh yeah.",
			"{char(susie, 9)}* Big enough to fit a castle inside.",
			"{char(flow, 0)}* What?",
			"{char(susie, 17)}* Nothing. Move on!"
        ])
	}
	else
	{
		cutscene_dialogue([
            "{char(flow, 1)}* Big ass closet.",
			"{char(none)}* You don't need anything from inside."
			])
	}
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}