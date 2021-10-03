extends Node2D

signal boil_over
signal animation_finished

var stability_threshold

func _ready():
	$Bubbles.value = 0
	stability_threshold = 99
	$Threshold.set_position(Vector2(0, get_threshold_y()))

func roll_stability():
	var rolled_value = rand_range(1, 100)
	yield(animate_value(rolled_value), "completed")
	yield(animate_value(0), "completed")
	if rolled_value > stability_threshold:
		emit_signal("boil_over")
	emit_signal("animation_finished")

func change_stability_threshold(delta):
	stability_threshold += delta
	if stability_threshold < 0:
		stability_threshold = 0
	if stability_threshold > 100:
		stability_threshold = 100
	yield(animate_threshold(), "completed")

func animate_value(target, tween_duration=0.5):
	$Bubbles/Tween.interpolate_property($Bubbles, 'value', $Bubbles.value, target, tween_duration, Tween.TRANS_CUBIC, Tween.EASE_OUT)
	$Bubbles/Tween.start()
	yield($Bubbles/Tween, "tween_completed")

func animate_threshold(tween_duration=0.5):
	var target_vector = Vector2(0, get_threshold_y());
	$Threshold/Tween.interpolate_property($Threshold, 'rect_position', $Threshold.rect_position, target_vector, tween_duration, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	$Threshold/Tween.start()
	yield($Threshold/Tween, "tween_completed")

func get_threshold_y():
	return 600 - (stability_threshold * 6) - 5
