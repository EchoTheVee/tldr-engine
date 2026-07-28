name = "Back Door FK"

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* You don't need to go back there right now.",
        ])
	cutscene_party_interpolate()
	//cutscene_sleep(20)
	//cutscene_func(room_goto(room_lw_flowerking_attic))
    cutscene_player_canmove(true)
	cutscene_play()
	
}