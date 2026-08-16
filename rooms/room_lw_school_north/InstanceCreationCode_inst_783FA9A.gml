//count = 0
trigger_code = function() {cutscene_create()
	cutscene_player_canmove(false)
	cutscene_party_follow(false)
	cutscene_set_variable(o_camera, "target", noone)
	
	cutscene_camera_pan(250, 60, 30)
	
	cutscene_actor_move(party_get_inst("flow"), new actor_movement(280, 80, 20))
	cutscene_actor_move(party_get_inst("susie"), new actor_movement(220, 80, 20))
	
	cutscene_actor_override(party_get_inst("susie"), true);
	cutscene_actor_override(party_get_inst("flow"), true);
	
	cutscene_set_variable(party_get_inst("susie"), "sprite_index", spr_susie_right_light_cs, 0)
	cutscene_set_variable(party_get_inst("flow"), "sprite_index", spr_flow_left_light, 0)
	
	cutscene_sleep(5)
	
	cutscene_dialogue([
        "{char(susie, 3)}* We might need to ask Ralsei for help...",
		"{char(susie, 3)}* We don't know where they could've taken her, and-",
		"{char(susie, 12)}* Can you take this seriously?",
        "{char(flow, 12)}*",
		"{char(susie, 17)}* NOT THAT SERIOUS.",
		"{char(susie, 17)}* WHATEVER! LETS JUST GO!",
    ],, false, true)
	cutscene_wait_dialogue_finish()
	
	cutscene_actor_override(party_get_inst("flow"), false);
	cutscene_actor_override(party_get_inst("susie"), false);
	
	camera_unpan(get_leader(), 10)
	
	cutscene_wait_until(function() {
        return !instance_exists(o_actor_mover)
    })
	
	cutscene_player_canmove(true)
	
	cutscene_party_follow(true)
	cutscene_party_interpolate()
	cutscene_play()
}