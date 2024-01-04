extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	%Start.grab_focus()


func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/level.tscn")


func _on_exit_pressed():
	$Fade/AnimationPlayer.play("fade_out")

func _on_animation_player_animation_finished(anim_name):
	match anim_name:
		"fade_out": get_tree().quit()
