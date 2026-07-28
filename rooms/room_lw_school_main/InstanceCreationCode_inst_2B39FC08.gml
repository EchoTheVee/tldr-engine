name = ""

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* You stare in disgust at the water fountain.",
			"* Some kid probably put their mouth on this."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}