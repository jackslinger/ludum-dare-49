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
		"display_name": "Horn of the Devil",
		"name": "devil_horn",
		"element": "fire",
		"instability": 10,
		"score": 20
	},
	{
		"display_name": "Skull of the Devil",
		"name": "devil_skull",
		"element": "fire",
		"instability": 10,
		"score": 20
	},
	{
		"display_name": "Claw of the Dragon",
		"name": "dragon_claw",
		"element": "fire",
		"instability": 10,
		"score": 20
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
		"display_name": "Dragonfly",
		"name": "dragonfly",
		"element": "air",
		"instability": 7,
		"score": 15
	},
	{
		"display_name": "Butterfly of the Meadow",
		"name": "pink_butterfly",
		"element": "air",
		"instability": 7,
		"score": 15
	},
	{
		"display_name": "Unhatched Moth",
		"name": "coccoon",
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
		"display_name": "Ant",
		"name": "ant",
		"element": "earth",
		"instability": 2,
		"score": 5
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
		"display_name": "Bottle of Blood",
		"name": "blood_bottle",
		"element": "water",
		"instability": 5,
		"score": 10
	},
	{
		"display_name": "Venom",
		"name": "venom",
		"element": "water",
		"instability": 5,
		"score": 10
	},
	{
		"display_name": "Tears of my Enemies",
		"name": "fresh_water",
		"element": "water",
		"instability": 5,
		"score": 10
	},
	{
		"display_name": "Experience of Life",
		"name": "elixir",
		"element": "water",
		"instability": 5,
		"score": 10
	},
	{
		"display_name": "Mulberry Essence",
		"name": "mulberry",
		"element": "water",
		"instability": 5,
		"score": 10
	},
	{
		"display_name": "Nightshade Essence",
		"name": "nightshade",
		"element": "water",
		"instability": 5,
		"score": 10
	},
	{
		"display_name": "Drops of Blood",
		"name": "blood_drops",
		"element": "water",
		"instability": 5,
		"score": 10
	}
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
