tool
extends Control

export(String) var ingredient_name

# Called when the node enters the scene tree for the first time.
func _ready():
	var ingredient = GlobalIngredients.get_ingredient(ingredient_name)
	$Name.text = ingredient["display_name"]
	$Element.texture = load("res://assets/simple_elements/" + ingredient["element"] + ".png")
	$Icon.texture = load("res://assets/ingredients/" + ingredient_name + ".png")
	$Instability.text = "Instability: " + str(ingredient["instability"])
	$Score.text = "Score: " + str(ingredient["score"])
