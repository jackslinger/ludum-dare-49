tool
extends Control

export(String) var ingredient_name setget change_ingredient 

# Called when the node enters the scene tree for the first time.
func _ready():
	populate_fields()
	
func change_ingredient(new_ingredient):
	ingredient_name = new_ingredient
	populate_fields()

func populate_fields():
	var ingredient = GlobalIngredients.get_ingredient(ingredient_name)
	$Name.text = ingredient["display_name"]
	$Element.texture = load("res://assets/simple_elements/" + ingredient["element"] + ".png")
	$Icon.texture = load("res://assets/ingredients/" + ingredient_name + ".png")
	$Instability.text = "Instability: " + str(ingredient["instability"])
	$Score.text = "Score: " + str(ingredient["score"])
