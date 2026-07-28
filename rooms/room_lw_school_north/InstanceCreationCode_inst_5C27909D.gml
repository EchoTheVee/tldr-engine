name = ""

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	if party_contains("susie")
	{
	cutscene_dialogue([
            "* The door is locked.",
			"* You try to peak inside through the window.",
			"* It's too dark to see anything.",
			"{char(flow, 1)}* Lame. {mini(`Lame...`, susie, 0)}"
        ])
	}
	else
	{
		cutscene_dialogue([
            "* The door is locked.",
			"* You try to peak inside through the window.",
			"* It's too dark to see anything.",
			"{char(flow, 1)}* Lame."
			])
	}
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}