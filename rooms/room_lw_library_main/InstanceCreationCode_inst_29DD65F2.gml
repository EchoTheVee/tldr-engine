name = "Table"

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* Looks like somebody was studying here.",
			"* They left everything on the table.",
			"{char(flow, 1)}* Imagine studying."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}