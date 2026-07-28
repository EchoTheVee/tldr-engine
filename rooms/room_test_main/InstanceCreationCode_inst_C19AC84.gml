name = "Flow Talk Test"

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	//cutscene_actor_dialogue(name = "flow", ["* This is a test"])
	//cutscene_func(new typer_char_flow())
	//new typer_char_flow()
	cutscene_dialogue([
            "* (Standing here, you interact with this text test box)",
            "{char(flow, 1)}* The hell is this thing?",
            "{char(none)}* (You don't know)",
        ])
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}

