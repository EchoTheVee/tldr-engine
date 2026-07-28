name = ""
times_interacted = 0

execute_code = function() 
{
	if times_interacted > 0
	{
		cutscene_create()
	cutscene_player_canmove(false)
	cutscene_dialogue([
            "* The stash is still here.",
			"* Best not be greedy.",
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
            "* It's a locker.",
			"* You found a stash of energy drinks inside.",
			"{char(flow, 1)}* Oh hell yeah!",
			"{char(none)}* You snatch one while noone is looking."
        ])
	item_add(new item_lw_weakedrink(), ITEM_TYPE.LIGHT)
	//item_add(new item_lw_bandage(), ITEM_TYPE.LIGHT)
	times_interacted++
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
	}
	
	
}