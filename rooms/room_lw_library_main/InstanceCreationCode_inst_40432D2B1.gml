name = "Bookshelf"

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* It's a bookshelf full of books.",
			"* None of them catch your attention."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}