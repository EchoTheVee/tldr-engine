count = 0
trigger_code = function() {
	cutscene_create()
	if count == 0 {
		cutscene_dialogue([
			"{char(flow, 0)}* You gotta admit, that was a pretty good jump.",
		])
	}
    else{
		
		exit
	}
    
	//cutscene_sleep(20)
	//cutscene_set_variable(id, "triggered", false)
	cutscene_party_interpolate()
	cutscene_play()
	
	count ++
}