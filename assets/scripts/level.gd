extends Node3D

var enemy : PackedScene = preload("res://scenes/enemy.tscn")

const SPEED = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	$Settings/Timer.start()
	GLOBAL.score = 0
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Settings/Path3D/PathFollow3D.set_progress($Settings/Path3D/PathFollow3D.get_progress() * SPEED * delta)


func _on_timer_timeout():
	var enemy_instance = enemy.instantiate()
	add_child(enemy_instance)
	enemy_instance.set_global_position($Settings/Path3D/PathFollow3D.get_global_position())
