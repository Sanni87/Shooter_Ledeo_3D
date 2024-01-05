extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	%Start.grab_focus()


func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/level.tscn")


func _on_exit_pressed():
	$Fade.visible = true #Activamos la visibilidad porque la habíamos puesto a false anteriormente
	$Fade/AnimationPlayer.play("fade_out")

func _on_animation_player_animation_finished(anim_name):
	match anim_name:
		"fade_in": $Fade.visible = false #Hacemos esto para que podamos hacer click en los botones
		"fade_out": get_tree().quit()
