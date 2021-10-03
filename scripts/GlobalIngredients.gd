tool
extends Node

var rng
var ingredients = [
	{
		"display_name": "Fire Scorpian",
		"name": "scorpian_red",
		"element": "fire",
		"instability": 10,
		"score": 20
	},
	{
		"display_name": "Fire Ant",
		"name": "fire_ant",
		"element": "fire",
		"instability": 10,
		"score": 20
	},
	{
		"display_name": "Fire Admiral Butterfly",
		"name": "red_admiral",
		"element": "fire",
		"instability": 10,
		"score": 20
	},
	{
		"display_name": "Slime",
		"name": "slime",
		"element": "water",
		"instability": 5,
		"score": 10
	},
	{
		"display_name": "Water",
		"name": "snow",
		"element": "water",
		"instability": 5,
		"score": 10
	},
	{
		"display_name": "Ant",
		"name": "ant",
		"element": "earth",
		"instability": 2,
		"score": 5
	},
	{
		"display_name": "Fly",
		"name": "fly",
		"element": "air",
		"instability": 7,
		"score": 15
	},
	{
		"display_name": "Beak",
		"name": "beak",
		"element": "air",
		"instability": 7,
		"score": 15
	},
	{
		"display_name": "Firefly",
		"name": "firefly",
		"element": "air",
		"instability": 7,
		"score": 15
	},
	{
		"display_name": "Skull",
		"name": "skull",
		"element": "earth",
		"instability": 2,
		"score": 5
	},
	{
		"display_name": "Bone",
		"name": "bone",
		"element": "earth",
		"instability": 2,
		"score": 5
	},
	{
		"display_name": "Brain",
		"name": "brain",
		"element": "earth",
		"instability": 2,
		"score": 5
	},
	{
		"display_name": "Clover",
		"name": "clover",
		"element": "earth",
		"instability": 2,
		"score": 5
	},
	{
		"display_name": "Cobweb",
		"name": "cobweb",
		"element": "earth",
		"instability": 2,
		"score": 5
	},
	{
		"display_name": "Eye",
		"name": "eye",
		"element": "earth",
		"instability": 2,
		"score": 5
	},
	{
		"display_name": "Teeth",
		"name": "teeth",
		"element": "earth",
		"instability": 2,
		"score": 5
	},
	{
		"display_name": "Tooth",
		"name": "tooth",
		"element": "earth",
		"instability": 3,
		"score": 8
	},
]

func _ready():
	rng = RandomNumberGenerator.new()

func get_ingredient(name):
	for ingredient in ingredients:
		if ingredient["name"] == name:
			return ingredient

func get_random_ingredient():
	var rand = rng.randi_range(0, ingredients.size())
	return ingredients[rand]["name"]
