name = "Fridge"
times_interacted = 0

execute_code = function() 
{
	if times_interacted > 0
	{
		cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* The food isn't any less stale.",
        ])
		times_interacted++
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
	}
	else
	{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* It's a well-loved fridge.",
			"* Everything in it seems to be stale.",
			"* As you turned to leave, you noticed some green stuff in the back.",
			"* You shoot the moss a thumbs up and closed the fridge.",
        ])
		times_interacted++
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
	}
}