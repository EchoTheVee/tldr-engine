name = "Hospital Piano"

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* It's a piano, seems rather dusty.",
			"* You bite back a sneeze, as not to interrupt the habitat."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}