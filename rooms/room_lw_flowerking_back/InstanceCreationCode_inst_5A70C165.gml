name = "Watering Can" 

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* It's an old watering can.",
			"* You wonder how efficient it would be to put this on your head.",
			"* Despite your curiosity, you choose not to."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}