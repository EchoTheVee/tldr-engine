name = ""

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* It's a -",
			"{char(flow, 9)}* DOES THAT BUILDING SAY LIBRARBY?!.",
			"{char(none)}* It does.",
			"{char(flow, 9)}* HAS NOONE IN THIS TOWN NOTICED THIS?!",
			"* SOMEONE NEEDS TO-",
			"{char(none)}* It would be best to move away from the sign before anyone gets hurt."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}