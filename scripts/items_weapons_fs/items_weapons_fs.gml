function item_w_thornring() : item_weapon() constructor {
	name = ["ThornRing?"]
	desc = ["Wearer takes damage from pain Reduces the TP cost of ice spells"]
	type = ITEM_TYPE.WEAPON
	stats = {
        attack: 14,
        magic: 12,
    } 
	icon = spr_ui_menu_icon_ring
	weapon_whitelist = ["noelle", "flow"]
	
	reactions = {
		susie: "...",
		ralsei: "...",
		noelle: { noelle: "That's not the thorn ring is it?",
		flow: "Nah.", },
		flow: "Ow." 
	}
    
    sell_price = 99999999999999999999999999999
    
    item_localize("item_w_thornring")
}  

// bats

function item_w_batbat() : item_weapon() constructor {
	name = ["BatBat"]
	desc = ["An upgraded version of your bat.", "--"]
	lw_counterpart = item_w_lw_bat
    type = ITEM_TYPE.WEAPON
	stats = {
		attack: 2, 
	}
	
	icon = spr_ui_menu_icon_bat
	
	weapon_whitelist = ["flow"]
	
	reactions = {
		kris: "...",
		susie: "Ugh, lame, needs more spikes.",
		ralsei: "Oh, no thank you.",
        noelle: "(Brings back good memories...)",
		flow: "Ol' reliable."
	}
    
    can_sell = false
    
    item_localize("item_w_batbat")
}
function item_w_lw_bat() : item_weapon() constructor {
    name = ["Old Bat"]
	desc = ["* The bat you've had since the beginning.", "--"]
	
	stats = {
        attack: 4,
    }
    
    item_localize("item_w_lw_bat")
}

function item_w_vinebat() : item_weapon() constructor {
	name = ["VineBat"]
	desc = ["These vines are so thick, you could swear youre just holding a tree root.", "--"]
	lw_counterpart = item_w_lw_bat
    type = ITEM_TYPE.WEAPON
	stats = {
		attack: 6, 
	}
	
	icon = spr_ui_menu_icon_bat
	
	weapon_whitelist = ["flow"]
	
	reactions = {
		kris: "...",
		susie: "Sick branch!",
		ralsei: "Looks a little heavy...",
        noelle: "(Reminds me of the forest...)",
		flow: "This'll do."
	}
    
    can_sell = false
    
    item_localize("item_w_vinebat")
}

function item_w_biibat() : item_weapon() constructor {
	name = ["BiiBat"]
	desc = ["It unsurfaces a wave of e-motions long since past.", "--"]
	lw_counterpart = item_w_lw_bat
    type = ITEM_TYPE.WEAPON
	stats = {
		attack: 3, 
	}
	
	icon = spr_ui_menu_icon_bat
	
	weapon_whitelist = ["flow"]
	
	reactions = {
		kris: "...",
		susie: "Nerd.",
		ralsei: "Looks like you can attach it to something!",
        noelle: "(Looks like it's missing something?)",
		flow: "Why does it have a hole in it?"
	}
    
    can_sell = false
    
    item_localize("item_w_biibat")
}

function item_w_wireframebat() : item_weapon() constructor {
	name = ["WireframeBat"]
	desc = ["The base essentials of the bats polygonal structure.", "--"]
	lw_counterpart = item_w_lw_bat
    type = ITEM_TYPE.WEAPON
	stats = {
		attack: 4, 
	}
	
	icon = spr_ui_menu_icon_bat
	
	weapon_whitelist = ["flow"]
	
	reactions = {
		kris: "...",
		susie: "Trippy.",
		ralsei: "You can see right through it.",
        noelle: "(Looks like it hurts to hold...)",
		flow: "Looks like it belongs in a blender."
	}
    
    can_sell = false
    
    item_localize("item_w_wireframebat")
}

function item_w_battatbat() : item_weapon() constructor {
	name = ["BattatBat"]
	desc = ["You dont want this.", "--"]
	lw_counterpart = item_w_lw_bat
    type = ITEM_TYPE.WEAPON
	stats = {
		attack: 0, 
	}
	
	icon = spr_ui_menu_icon_bat
	
	weapon_whitelist = []
	
	reactions = {
		kris: "...",
		susie: "Oh hell no.",
		ralsei: "Bats are more your thing.",
        noelle: "...",
		flow: "I dont fucking want this."
	}
    
    can_sell = false
    
    item_localize("item_w_battatbat")
}