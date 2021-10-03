extends Control
signal disable_buttons

func _ready():
	
	pass # Replace with function body.

func _on_add_ingredient(ingredient_name):
	emit_signal("disable_buttons")
	$Plop.play()
	$Bubbling.play()
	var ingredient = GlobalIngredients.get_ingredient(ingredient_name)
	$Score.add_score(ingredient["score"])
	yield($StabilityBar.change_stability_threshold(-ingredient["instability"]), "completed")
	yield($StabilityBar.roll_stability(), "completed")
	$Bubbling.stop()
