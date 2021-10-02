tool
extends Node

var ingredients = [
	{
		"display_name": "Fire Scorpian",
		"name": "scorpian_red",
		"element": "fire",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Fire Ant",
		"name": "fire_ant",
		"element": "fire",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Fire Admiral Butterfly",
		"name": "red_admiral",
		"element": "fire",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Slime",
		"name": "slime",
		"element": "water",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Water",
		"name": "snow",
		"element": "water",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Ant",
		"name": "ant",
		"element": "earth",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Fly",
		"name": "fly",
		"element": "air",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Beak",
		"name": "beak",
		"element": "air",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Firefly",
		"name": "firefly",
		"element": "air",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Skull",
		"name": "skull",
		"element": "earth",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Bone",
		"name": "bone",
		"element": "earth",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Brain",
		"name": "brain",
		"element": "earth",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Clover",
		"name": "clover",
		"element": "earth",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Cobweb",
		"name": "cobweb",
		"element": "earth",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Eye",
		"name": "eye",
		"element": "earth",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Teeth",
		"name": "teeth",
		"element": "earth",
		"instability": 10,
		"score": 10
	},
	{
		"display_name": "Tooth",
		"name": "tooth",
		"element": "earth",
		"instability": 10,
		"score": 10
	},
]

func get_ingredient(name):
	for ingredient in ingredients:
		if ingredient["name"] == name:
			return ingredient
