//count = 0
trigger_code = function() {cutscene_create()
	cutscene_player_canmove(false)
	cutscene_party_follow(false)
	
	cutscene_dialogue([
        "{char(none)}* It's a gap with no way across.",
        "{char(flow, 0)}* Oh I can SO make that jump.",
    ],, false, true)
	cutscene_wait_dialogue_finish()
	
	for (var i = 0; i < party_length(true); ++i) {
	    cutscene_actor_move(party_get_inst(global.party_names[i]), [
			new actor_movement(110, 170, 20),
			new actor_movement_jump(200, 180),
		], false)
	}
	cutscene_wait_until(function() {
        return !instance_exists(o_actor_mover)
    })
	
	cutscene_player_canmove(true)
	
	cutscene_party_follow(true)
	cutscene_party_interpolate()
	cutscene_play()
}