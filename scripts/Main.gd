extends Control

func _ready():
	pass # Replace with function body.

func _on_add_ingredient():
	$Score.add_score(10)
	yield($StabilityBar.change_stability_threshold(-10), "completed")
	yield($StabilityBar.roll_stability(), "completed")
