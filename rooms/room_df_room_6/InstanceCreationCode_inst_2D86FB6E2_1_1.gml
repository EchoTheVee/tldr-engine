name = ""
times_interacted = 0
execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	if times_interacted < 1
	{
	cutscene_dialogue([
            "* It's the gap that's stopping you from leaving.",
			"* Looks like you'll have to find another way out"
        ])
	}
	else
	{
	cutscene_dialogue([
            "* No turning back.",
        ])	
	}
	times_interacted++
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}