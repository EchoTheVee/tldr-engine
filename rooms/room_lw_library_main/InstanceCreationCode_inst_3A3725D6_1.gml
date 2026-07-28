name = "Review Board"

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* There's a bunch of papers hung up.",
			"* One of them seems to be a review from the Manga category.",
			"* You refuse to read it.",
			"{char(flow, 1)}* I don't need to know what yellow lizards are reading."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}