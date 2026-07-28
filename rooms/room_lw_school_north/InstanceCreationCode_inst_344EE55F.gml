name = ""

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* There is a flyer on the door.",
			"* The flyer seems to be promoting some sort of play.",
			"* You don't plan to attend."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}