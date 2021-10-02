tool
extends TextureRect

export(String, "earth", "water", "fire", "air") var element setget setElement

# Called when the node enters the scene tree for the first time.
func _ready():
	var texture = load("res://assets/simple_elements/" + element + ".png")
	set_texture(texture)
	set_tooltip(element)

# Called when the element is changed (usually in the editor)
func setElement(selected_element):
	element = selected_element
	var texture = load("res://assets/simple_elements/" + element + ".png")
	set_texture(texture)
	set_tooltip(element)
	update()
