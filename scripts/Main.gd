extends Control

func _ready():
	#connect("add_ingredient", self, "_on_add_ingredient")
	pass # Replace with function body.

func _on_add_ingredient(ingredient_name):
	var ingredient = GlobalIngredients.get_ingredient(ingredient_name)
	$Score.add_score(ingredient["score"])
	yield($StabilityBar.change_stability_threshold(-ingredient["instability"]), "completed")
	yield($StabilityBar.roll_stability(), "completed")