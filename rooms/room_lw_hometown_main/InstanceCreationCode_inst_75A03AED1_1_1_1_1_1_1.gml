name = ""
times_interacted = 0
execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	if times_interacted < 1
	{
	cutscene_dialogue([
            "* It's a -",
			"{char(flow, 9)}* DOES THAT BUILDING SAY LIBRARBY?!.",
			"{char(none)}* It does.",
			"{char(flow, 9)}* HAS NOONE IN THIS TOWN NOTICED THIS?!",
			"* SOMEONE NEEDS TO-",
			"{char(none)}* It would be best to move away from the sign before anyone gets hurt."
        ])
	}
	else
	{
		cutscene_dialogue([
            "{char(flow, 9)}* ...",
			])
	}
	times_interacted++
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}