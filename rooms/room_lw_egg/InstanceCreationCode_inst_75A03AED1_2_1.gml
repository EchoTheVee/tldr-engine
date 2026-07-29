name = ""
times_interacted = 0
execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	if times_interacted < 1
	{
	cutscene_dialogue([
            "* (Well, there is a man here.)",
			"* (He asks if you remember.)",
			"* (He asks if you will continue).",
			"* (He asks if you are enjoying the new variable.)",
			"* (Before you can respond, he raises a hand to keep you quiet.)",
			"* (He raises his other hand, inside of it is a seed.)",
			"* (The seed looks awfully egg shaped.)",
			"* (You recieved an Egg-Seed.)"
        ])
	}
	else
	{
	cutscene_dialogue([
            "* (Well, there is not a man here.)",
        ])	
	}
	times_interacted++
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}