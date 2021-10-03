extends Node2D

var failures
var max_failures = 3

func _ready():
	failures = 0
	update_icons()

func mark_failure():
	if failures < max_failures:
		failures += 1
		update_icons()
	
	if failures >= max_failures:
		get_tree().change_scene("res://scenes/GameOver.tscn")

func update_icons():
	if failures >= 1:
		$First.play("red")
	else:
		$First.play("green")

	if failures >= 2:
		$Second.play("red")
	else:
		$Second.play("green")

	if failures >= 3:
		$Third.play("red")
	else:
		$Third.play("green")
