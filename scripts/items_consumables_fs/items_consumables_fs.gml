function item_lw_weakedrink() : item() constructor {
    name = ["Energy Drink"]
    desc = ["* Something to help drive away the groginess.", "--", "* Lesbians also love it apparently."]
    
    use = function(item_index, target_index, caller) {
        audio_play(snd_heal)
        save_set("LW_HP", clamp(save_get("LW_HP") + 15, 0, save_get("LW_MAXHP")))
		//dialogue_start(loc("item_c_lw_bandage_apply"))
        
        item_delete(item_index, ITEM_TYPE.LIGHT)
	}
    
    item_localize("item_c_lw_weakedrink")
}

function item_pocketbastard() : item() constructor {
	name = ["Pocket-Bastard"]
	desc = ["Gained from having swears screamed into the void of your tail.", "Heals 80HP"]
	
	use = function(item_index, target_index, caller = -1) {
		party_heal(global.party_names[target_index], 80, caller)
		item_delete(item_index)
	}
	reactions = {
		susie: "Hey, this rules!",
		ralsei: "Nice and chalky.",
		noelle: "(I-isn't this the chalk I gave her?)",
	}
    
    sell_price = 50
    
    item_localize("item_c_pocketbastard")
}