name = ""

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* Despite being just a mattress on the floor, it's your bed.",
			"* Looks like it's his size.",
			"* ...You should probably thank him."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}