
function item_a_bandage_wrap() : item_armor() constructor {
	name = ["BandageWrap"]
	desc = ["Fits nicely around your hand.", "--"]
	lw_counterpart = item_a_lw_bandage
	
	armor_blacklist = ["kris"]
	
	stats = {
		defense: 1,
	}
	
	reactions = {
		susie: "...",
		ralsei: "...",
		noelle: "...",
		flow: "Useful."
	}
    
    sell_price = 200
    
    item_localize("item_a_bandage_wrap")
}

function item_a_lw_guitarpick() : item_armor() constructor {
    name = ["Guitar Pick"]
    desc = ["* Memories of a lost past glint in it's shine.", "--"]
	
	stats = {
		defense: 1,
	}
    
    item_localize("item_a_guitarpick")
}