extends Control
signal disable_buttons

func _ready():
	$Finish.disabled = true
	for card in $MarginContainer/HBoxContainer.get_children():
		var ingredient_name = GlobalIngredients.get_random_ingredient()
		card._on_IngredientCard_add_ingredient(ingredient_name)

func _on_add_ingredient(ingredient_name):
	emit_signal("disable_buttons")
	$Plop.play()
	$Bubbling.play()
	var ingredient = GlobalIngredients.get_ingredient(ingredient_name)
	$Score.add_score(ingredient["score"])
	yield($StabilityBar.change_stability_threshold(-ingredient["instability"]), "completed")
	yield($StabilityBar.roll_stability(), "completed")
	$Bubbling.stop()


func _on_Finish_pressed():
	get_tree().change_scene("res://scenes/GameOver.tscn")

func _on_Failures_loose():
	$Score.reset()
	get_tree().change_scene("res://scenes/GameOver.tscn")


func _on_Elements_requirements_met():
	$Finish.disabled = false
