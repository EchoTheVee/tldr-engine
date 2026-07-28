function item_weapon() : item() constructor {
	type = ITEM_TYPE.WEAPON
    
    weapon_fatal = false
	weapon_whitelist = []
    weapon_element = {
        element: undefined,
        multiplier: 1.0
    }
}

// swords
function item_w_spookysword() : item_weapon() constructor {
	name = ["Spookysword"]
	desc = ["A black-and-orange sword with a bat hilt.", "--"]
	lw_counterpart = item_w_lw_halloween_pencil
    
	stats = {
		attack: 2, 
	}
	effect = {
        text: "Spookiness UP",
        sprite: spr_ui_menu_icon_up
    }
	icon = spr_ui_menu_icon_sword
	
	weapon_whitelist = ["kris"]
	
	reactions = {
		susie: "Ugh, it's too small!",
		ralsei: "Oh, it's too scary!",
        noelle: "(It's kinda cool...)"
	}
    
    buy_price = 200
    sell_price = 100
    
    item_localize("item_w_spookysword")
}
function item_w_lw_halloween_pencil() : item_weapon() constructor {
    name = ["Halloween Pencil"]
	desc = ["* Orange with black bats on it.", "--"]
	
	stats = {
        attack: 1,
    }
    
    item_localize("item_w_lw_halloween_pencil")
}

function item_w_wood_blade() : item_weapon() constructor {
	name = ["Wood Blade"]
	desc = ["A wooden practice blade with a carbon-\nreinforced core.", "--"]
    lw_counterpart = item_w_lw_pencil
	
	stats = {}
	icon = spr_ui_menu_icon_sword
	weapon_whitelist = ["kris"]
	
	reactions = {
		susie: "What's this!? A CHOPSTICK?",
		ralsei: "That's yours, Kris...",
        noelle: "(It has bite marks...)"
	}
    
    sell_price = 30
    
    item_localize("item_w_wood_blade")
}
function item_w_lw_pencil() : item_weapon() constructor {
    name = ["Pencil"]
	desc = ["* \"Pencil\" - Weapon 1 AT{br}{resetx}{sleep(10)}* Mightier than a sword?{br}{resetx}{sleep(10)} * Maybe equal at best.", "--"]
	
	stats = {
        attack: 1,
    }
    
    item_localize("item_w_lw_pencil")
}

function item_w_saber10() : item_weapon() constructor {
	name = ["Saber10"]
	desc = ["A saber made of 10 cactus needles. Fortunately, can deal more than 10 damage.", "--", "Tsun-type armaments"]
	lw_counterpart = item_w_lw_cactusneedle
    
	stats = {
        attack: 6,
    }
	icon = spr_ui_menu_icon_sword
	weapon_whitelist = ["kris"]
	
	reactions = {
		susie: "Nah, I'd snap it.",
		ralsei: "You want to... pierce my ears...?",
		noelle: "(I'm not against using it, but...)",
	}
    
    sell_price = 355
    
    item_localize("item_w_saber10")
}
function item_w_lw_cactusneedle() : item_weapon() constructor {
	name = ["CactusNeedle"]
	desc = ["* Ouch! ... It's somewhat sentimental in a way.", "--"]
	
	stats = {
        attack: 2,
    }
    
    item_localize("item_w_lw_cactusneedle")
}

function item_w_jingleblade() : item_weapon() constructor {
	name = ["JingleBlade"]
	desc = ["A lance-like sword with red-and-white stripes. Perfect for jousting.", "--"]
	lw_counterpart = item_w_lw_holiday_pencil
    
	stats = {
        attack: 7,
        defense: 1,
    }
	icon = spr_ui_menu_icon_sword
	weapon_whitelist = ["kris", "noelle"]
    effect = {
        text: "Festive",
        sprite: spr_ui_menu_icon_smile
    }
	
	reactions = {
		susie: "Sleigh the bad guys.",
		ralsei: "Mmm! Minty and festive!",
		noelle: "What is this, a barber pole?",
	}
    
    sell_price = 617
    
    item_localize("item_w_jingleblade")
}
function item_w_lw_holiday_pencil() : item_weapon() constructor {
	name = ["Holiday Pencil"]
	desc = ["* \"Holiday Pencil\" - 1 AT{br}{resetx}{sleep(10)}* A festive candycane pencil.{br}{resetx}{sleep(10)}* Do not eat.", "--"]
	
	stats = {
        attack: 1,
    }
    
    item_localize("item_w_lw_holiday_pencil")
}

// axes
function item_w_mane_ax() : item_weapon() constructor {
    name = ["Mane Ax"]
	desc = ["Beginner's ax forged from the mane of a dragon whelp.", "--"]
	
	stats = {} 
	icon = spr_ui_menu_icon_axe
	weapon_whitelist = []
	
	reactions = {
		susie: "I'm too GOOD for that.",
		ralsei: "Ummm... it's a bit big.",
		noelle: "It... smells nice...",
	}
    
    sell_price = 40
    
    item_localize("item_w_mane_ax")
}
function item_w_devilsknife() : item_weapon() constructor {
	name = ["Devilsknife"]
	desc = ["Skull-emblazoned scythe-ax.\nReduces Rudebuster's cost by 10"]
	
	stats = {
        attack: 5,
        magic: 4,
    } 
    effect = {
        text: "Buster TP DOWN",
        sprite: spr_ui_menu_icon_down
    }
	icon = spr_ui_menu_icon_axe
	weapon_whitelist = ["susie"]
	
	reactions = {
		susie: "Let the games begin!",
		ralsei: "It's too, um, evil.",
		noelle: "...? It smiled at me?",
	}
    
    can_sell = false
    
    item_localize("item_w_devilsknife")
}    
function item_w_absorbax() : item_weapon() constructor {
	name = ["AbsorbAx"]
	desc = ["A long, curved axe with an indent. Scoop up HP when you attack."]
	
	stats = {
        attack: 8,
    } 
    effect = {
        text: "Vampire",
        sprite: spr_ui_menu_icon_demon
    }
	icon = spr_ui_menu_icon_axe
	weapon_whitelist = ["susie"]
	
	reactions = {
		susie: "Scoopin' time.",
		ralsei: "Don't scoop me!",
		noelle: "That red... is that blood?",
	}
    
    sell_price = 617
    
    item_localize("item_w_absorbax")
}  

// scarfs
function item_w_red_scarf() : item_weapon() constructor {
	name = ["Red Scarf"]
	desc = ["A basic scarf made of lightly\nmagical fiber.", "--"]
	
	stats = {} // it does nothing (cries and runs off)
	icon = spr_ui_menu_icon_scarf
	weapon_whitelist = ["ralsei"]
	
	reactions = {
		susie: "No. Just... no.",
		ralsei: "Comfy! Touch it, Kris!",
		noelle: "Huh? No, I'm not cold.",
	}
    
    sell_price = 50
    
    item_localize("item_w_red_scarf")
}
function item_w_flexscarf() : item_weapon() constructor {
	name = ["FlexScarf"]
	desc = ["A scarf that is warm and fuzzy, but with a metal core that lets it keep its shape.", "--", "Weaklings can flex too"]
	
	stats = {
        attack: 4,
        magic: 1,
    } 
	icon = spr_ui_menu_icon_scarf
	weapon_whitelist = ["ralsei"]
	
	reactions = {
		susie: "Looks like a giant caterpillar.",
		ralsei: "So pliable, like me!",
		noelle: "Twist it and... it's a wreath!",
	}
    
    sell_price = 360
    
    item_localize("item_w_flexscarf")
}
function item_w_puppetscarf() : item_weapon() constructor {
	name = ["PuppetScarf"]
	desc = ["A scarf made of strange strings. For those that abandon healing."]
	
	stats = {
        attack: 10,
        magic: -6,
    } 
	icon = spr_ui_menu_icon_scarf
	weapon_whitelist = ["ralsei"]
	
	reactions = {
		susie: "No way, that's creepy.",
		ralsei: "If I have to fight...",
		noelle: "(Feels like guitar strings...)",
	}
    
    can_sell = false
    
    item_localize("item_w_puppetscarf")
} 

// rings
function item_w_snowring() : item_weapon() constructor {
	name = ["SnowRing"]
	desc = ["A ring with the emblem of the snowflake"]
	
	stats = {}
	icon = spr_ui_menu_icon_ring
	weapon_whitelist = ["noelle"]
	
	reactions = {
		susie: "Smells like Noelle",
		ralsei: "Are you... proposing?",
		noelle: "(Thank goodness...)",
	}
    
    sell_price = 50
    
    item_localize("item_w_snowring")
}
function item_w_freezering() : item_weapon() constructor {
	name = ["FreezeRing"]
	desc = ["A ring with a snowglobe on it. ... is that someone inside?"]
	
	stats = {
        attack: 4,
        magic: 4,
    } 
	icon = spr_ui_menu_icon_ring
	weapon_whitelist = ["noelle"]
	
	reactions = {
		susie: "Heh, you steal this? Heh.",
		ralsei: "It's beautiful...",
		noelle: "...",
	}
    
    sell_price = 500
    
    item_localize("item_w_freezering")
}  
function item_w_thornring() : item_weapon() constructor {
	name = ["ThornRing?"]
	desc = ["Wearer takes damage from pain Reduces the TP cost of ice spells"]
	
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