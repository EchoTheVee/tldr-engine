name = "complete chapter"

execute_code = function() {
	cutscene_create(); 
	
	cutscene_dialogue("* This will overwrite your save file on slot 3. Do you want to continue?")
	cutscene_choicer(["Yes", "No"]);
	
	cutscene_func(function() {
		if global.temp_choice == 0 {
			var _text = save_is_slot_completed(2)
                ? "* Slot 3's Completion Data was erased."
                : "* Slot 3 is now considered completed. Completion Data was created.";
			var _p = !save_is_slot_completed(2) ? 1 : 0.7
            
            if !save_is_slot_completed(2)
                save_complete(2);
            else 
                save_erase_completion(2);
            
			cutscene_create();
			cutscene_audio_play(snd_save, false, 1, _p);
			cutscene_dialogue(_text);
			cutscene_play();
		}
	});	
	
	cutscene_play();
}