name = ""

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* It's your locker.",
			"* You don't need to use it right now.",
			"* You notice the locker wasn't locked.",
			"* You lockered the lock."
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}