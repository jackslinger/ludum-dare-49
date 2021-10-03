extends Control
signal disable_buttons

func _ready():
	#connect("add_ingredient", self, "_on_add_ingredient")
	pass # Replace with function body.

func _on_add_ingredient(ingredient_name):
	emit_signal("disable_buttons")
	var ingredient = GlobalIngredients.get_ingredient(ingredient_name)
	$Score.add_score(ingredient["score"])
	yield($Right/StabilityBar.change_stability_threshold(-ingredient["instability"]), "completed")
	yield($Right/StabilityBar.roll_stability(), "completed")
