execute_code = function() 
{
	cutscene_create()
	//cutscene_player_canmove(false)
	cutscene_dialogue(box_pos_down = fa_center)
	cutscene_dialogue([
            "* You check the clock.",
			"* You don't think it's time for class."
        ])
	//cutscene_party_interpolate()
    //cutscene_player_canmove(true)
	cutscene_play()
}