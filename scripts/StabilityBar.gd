extends Node2D

var animating
var new_value
var speed = 1

func _ready():
	animating = true
	new_value = 90
	$Bubbles.value = 0

func roll_stability():
	var rolled_value = rand_range(1, 100)
	yield(animate_value(rolled_value), "completed")
	yield(animate_value(0), "completed")

func animate_value(target, tween_duration=1.0):
	$Bubbles/Tween.interpolate_property($Bubbles, 'value', $Bubbles.value, target, tween_duration, Tween.TRANS_CUBIC, Tween.EASE_OUT)
	$Bubbles/Tween.start()
	yield($Bubbles/Tween, "tween_completed")


func _on_Button_button_down():
	roll_stability()
