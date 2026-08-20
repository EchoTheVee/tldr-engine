name = ""

execute_code = function() 
{
	cutscene_create()
	cutscene_player_canmove(false)
	cutscene_set_variable(o_camera, "target", noone)
	
	cutscene_camera_pan(160, 280, 30)
	cutscene_dialogue([
			"* It's what you tell yourself is you.",
			"* But...",
        ])
		//cutscene_func(draw_sprite(spr_mirror_shatter_overlay,,0,0))
	cutscene_instance_create(fade_to_black, 0, 0)
	
	cutscene_sleep(60)
	cutscene_dialogue([
			"* Do you really believe that?",
			"* Everyone else seems to."
        ])
	cutscene_instance_create(fade_to_black, 0, 0, -9000)
	cutscene_sleep(60)
	
	cutscene_instance_create(o_text_typer, 320, 20,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* You never have though."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(40)
	cutscene_instance_create(o_text_typer, 320, 60,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* Not in yourself."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(40)
cutscene_instance_create(o_text_typer, 320, 100,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* Not in your friends."
	]),
	gui: true,
	center_x: true
	})	
	cutscene_sleep(40)
	cutscene_instance_create(o_text_typer, 320, 140,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* Not in your own image."
	]),
	gui: true,
	center_x: true
	})	
	cutscene_sleep(40)
	cutscene_instance_create(o_text_typer, 320, 180,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* Is this who you wanted to be?"
	]),
	gui: true,
	center_x: true
	})	
	cutscene_sleep(40)
	cutscene_instance_create(o_text_typer, 320, 220,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* You're not who you were."
	]),
	gui: true,
	center_x: true
	})	
	cutscene_sleep(40)
	cutscene_instance_create(o_text_typer, 320, 260,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* Which is what you were striving for."
	]),
	gui: true,
	center_x: true
	})	
	cutscene_sleep(40)
	cutscene_instance_create(o_text_typer, 320, 300,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* But..."
	]),
	gui: true,
	center_x: true
	})	
	cutscene_sleep(40)
	cutscene_instance_create(o_text_typer, 320, 340,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* Did you ever have an end goal in mind?"
	]),
	gui: true,
	center_x: true
	})	
	cutscene_sleep(60)
	cutscene_func(instance_destroy, o_text_typer)
	cutscene_dialogue([
			"* You yell at the mirror to shut up.",
        ])
	cutscene_wait_dialogue_finish()
	
	cutscene_instance_create(o_text_typer, 320, 20,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* Fighting with yourself again."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(60)
	cutscene_instance_create(o_text_typer, 320, 60,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* You've always been a brute."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(60)
	cutscene_instance_create(o_text_typer, 320, 100,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* Hell, it's the only thing that's stuck."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(60)
	cutscene_instance_create(o_text_typer, 320, 140,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* You've changed your face."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(60)
	cutscene_instance_create(o_text_typer, 320, 180,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* You've changed your voice."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(60)
	cutscene_instance_create(o_text_typer, 320, 220,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* You've changed your environment."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(60)
	cutscene_instance_create(o_text_typer, 320, 260,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* Yet you still hide behind that bat."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(60)
	cutscene_instance_create(o_text_typer, 320, 300,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* You'd be nothing without it."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(60)
	cutscene_instance_create(o_text_typer, 320, 340,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* Despite all that work that you've put into yourself."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(60)
	cutscene_instance_create(o_text_typer, 320, 380,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* You're more lost than you've ever been."
	]),
	gui: true,
	center_x: true
	})
	
	cutscene_sleep(60)
	cutscene_func(instance_destroy, o_text_typer)
	cutscene_dialogue([
			"{effect(2)}* You shout again, your voice growing hoarse.{effect(0)}",
        ],,,true)
	cutscene_wait_dialogue_finish()
	
	cutscene_instance_create(o_text_typer, 320, 20,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* You can't even come to terms with it."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(60)
	cutscene_instance_create(o_text_typer, 320, 60,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* You've even changed your name to escape."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(60)
	cutscene_instance_create(o_text_typer, 320, 100,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* Flower..."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(60)
	cutscene_instance_create(o_text_typer, 320, 140,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* Just accept who you already are."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(60)
	cutscene_instance_create(o_text_typer, 320, 180,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* A brash, good for nothing..."
	]),
	gui: true,
	center_x: true
	})
	cutscene_sleep(60)
	cutscene_instance_create(o_text_typer, 320, 220,,{text: dialogue_array_to_string(
	[
	"{char(empty)}* Delicate {color(c_orange)}Flower."
	]),
	gui: true,
	center_x: true,
	})
	cutscene_sleep(20)
	//draw_sprite(spr_mirror_shatter_overlay)
	cutscene_instance_create(o_mirror_overlay, 0, 160)
	cutscene_func(instance_destroy, o_text_typer)
	cutscene_audio_play(snd_mirrorshatter)
	
	cutscene_party_interpolate()
    cutscene_player_canmove(true)
	cutscene_play()
}