extends Control

var air
var earth
var fire
var water

var required_air
var required_earth
var required_fire
var required_water

signal requirements_met

# Called when the node enters the scene tree for the first time.
func _ready():
	air = 0
	earth = 0
	fire = 0
	water = 0
	
	required_air = 2
	required_earth = 1
	required_fire = 2
	required_water = 3
	
	update_display()

func update_display():
	$Wrapper/AirContainer/AirLabel.text = "Air: %s/%s" % [air, required_air]
	$Wrapper/EarthContainer/EarthLabel.text = "Earth: %s/%s" % [earth, required_earth]
	$Wrapper/FireContainer/FireLabel.text = "Fire: %s/%s" % [fire, required_fire]
	$Wrapper/WaterContainer/WaterLabel.text = "Water: %s/%s" % [water, required_water]

func _on_add_ingredient(ingredient_name):
	var ingredient = GlobalIngredients.get_ingredient(ingredient_name)
	var type = ingredient["element"]
	if type == "air":
		air += 1
	elif type == "earth":
		earth += 1
	elif type == "fire":
		fire += 1
	elif type == "water":
		water += 1
	update_display()
	
	if air >= required_air && earth >= required_earth && fire >= required_fire && water >= required_water:
		emit_signal("requirements_met")
