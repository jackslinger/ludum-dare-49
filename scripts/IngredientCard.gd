tool
extends Control

export(String) var ingredient_name

signal add_ingredient(ingredient_name)

# Called when the node enters the scene tree for the first time.
func _ready():
	var name = $VBoxContainer/HBoxContainer/Name
	var element = $VBoxContainer/HBoxContainer/Element
	var icon = $Icon
	var instability = $VBoxContainer/HBoxContainer2/Instability
	var score = $VBoxContainer/HBoxContainer2/Score
	
	var ingredient = GlobalIngredients.get_ingredient(ingredient_name)
	name.text = ingredient["display_name"]
	element.texture = load("res://assets/simple_elements/" + ingredient["element"] + ".png")
	icon.texture = load("res://assets/ingredients/" + ingredient_name + ".png")
	instability.text = "Instability: " + str(ingredient["instability"])
	score.text = "Score: " + str(ingredient["score"])


func _on_Submit_button_down():
	emit_signal("add_ingredient", ingredient_name)
