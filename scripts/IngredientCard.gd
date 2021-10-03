tool
extends Control

export(String) var ingredient_name

signal add_ingredient(ingredient_name)
var name_label
var element
var icon
var instability
var score

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("add_ingredient", self, "_on_IngredientCard_add_ingredient")
	name_label = $VBoxContainer/HBoxContainer/Name
	element = $VBoxContainer/HBoxContainer/Element
	icon = $Icon
	instability = $VBoxContainer/HBoxContainer2/Instability
	score = $VBoxContainer/HBoxContainer2/Score
	set_ingredient_info()
	

func set_ingredient_info():
	var ingredient = GlobalIngredients.get_ingredient(ingredient_name)
	name_label.text = ingredient["display_name"]
	element.texture = load("res://assets/simple_elements/" + ingredient["element"] + ".png")
	icon.texture = load("res://assets/ingredients/" + ingredient_name + ".png")
	instability.text = "Instability: " + str(ingredient["instability"])
	score.text = "Score: " + str(ingredient["score"])

func _on_Submit_button_down():
	emit_signal("add_ingredient", ingredient_name)


func _on_IngredientCard_add_ingredient(new_ingredient_name):
	ingredient_name = GlobalIngredients.get_random_ingredient()
	set_ingredient_info()
