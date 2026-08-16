function enemy_bushful() constructor {
	// base info
	name = "Bushful"
	obj = o_actor_e_bushful
	
	// stats
	hp =		150
	max_hp =	150
	attack =	0
	defense =	0
	status_effect = ""
    carrying_money = 53
    element = undefined
	
	mercy =	0
    mercy_add_pity_percent = 20
    can_spare = true
	no_mercy_text = "* But you couldn't spare it, for some reason."
    
	tired =	false
    low_hp_tired = true // whether the enemy should turn tired when hp is low
    low_hp_tired_threshold = 1/2 // if the hp is below this threshold, the enemy will become tired if low_hp_tired is true
	
	// acts
	acts = [
		{
			name: loc("enc_act_check"),
			desc: "Useless analysis",
			party: [],
            tp_cost: 0, // optional, 0 by default
            color: c_white, // color of the act. can be callable
            
            enabled: true, // optional, true by default. can also be callable
            perform_act_anim: true, // optional, true by default
            return_to_idle_sprites: true, // optional, true by default
            
			exec: function(enemy_slot, user_index) {
				encounter_scene_dialogue("* Empty CHECK text.")
			},
            exec_args: []
		},
	]
	acts_special = {}
	acts_special_desc = loc("enc_ui_label_standard")
	
	// text
	dialogue =				"Test" // can be a function (can accept slot argument as arg0)
	dia_bubble_off_x =		0
	dia_bubble_off_y =		0
    dia_bubble_off_type =	BUBBLE_RELATIVE.TO_DEFAULT_POS
	dia_bubble_sprites =	[spr_ui_enc_dialogue_box, spr_ui_enc_dialogue_spike]
	
	turn_object = o_turn_default
	
    // misc
    freezable = false
    defeat_marker = 0 // marker id
    run_away = true // if set to false, if dealt fatal damage the enemy will die
    hurt_sound = snd_hurt
    
    // sprites
    s_idle = spr_e_bushful_idle
    s_spare = spr_e_bushful_spare
    s_hurt = spr_e_bushful_hurt
    
	// misc (in-fight events)
    ev_init =           -1 // called 1 frame after o_enc is created
    ev_pre_dialogue =   -1
    ev_party_exec =     -1
	ev_dialogue =	    -1
	ev_turn =	  	    -1
    ev_turn_start =     -1
	ev_post_turn =	    -1
    ev_win =            -1
    ev_hurt =           -1 // called when the enemy is hurt
	
	// recruit
	recruit = new enemy_recruit()
	
	// system
	actor_id =	-1
	slot =		-1
    
    // methods
    __defeat = method(self, function(way_of_defeat = undefined) {
        if instance_exists(o_enc) {
            if !is_undefined(way_of_defeat)
                o_enc.encounter_data.enemies[slot] = way_of_defeat
            o_enc.earned_money += carrying_money // add money
        }
    })
    
    __run_defeat = method(self, function() {
        actor_id.run_away = true
        audio_play(snd_defeatrun)
        
        __defeat("ran away")
        if !recruit_islost(self) {
            instance_create(o_text_hpchange, actor_id.x, actor_id.s_get_middle_y(), actor_id.depth - 100, {
                draw: "lost",
                mode: TEXT_HPCHANGE_MODE.SCALE,
            })
            recruit_lose(self)
        }
    })
    __fatal_defeat = method(self, function() {
        with actor_id
            instance_create(o_eff_fatal_damage, x, y, depth, {
                sprite_index: other.s_hurt,
                image_xscale: image_xscale,
                image_yscale: image_yscale,
                image_index: image_index,
                image_speed: 0,
                shake: 6,
            })
        instance_destroy(actor_id)
        
        __defeat("fatal")
        if !recruit_islost(self)
            recruit_lose(self)
    })
    __freeze_defeat = method(self, function() {
        animate(0, 1, 20, "linear", actor_id, "freeze")
        
        with actor_id
            instance_create(o_text_hpchange, x, s_get_middle_y(), depth - 100, {
                draw: "frozen",
                mode: TEXT_HPCHANGE_MODE.SCALE,
            })
        audio_play(snd_petrify)
        
        if !recruit_islost(self)
            recruit_lose(self)
        __defeat()
    })
}