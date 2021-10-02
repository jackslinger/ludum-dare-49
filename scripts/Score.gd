extends Control

var score

func _ready():
	score = 0
	$RichTextLabel.text = "Score: %s" % score

func add_score(delta):
	update_score(score + delta)

func update_score(new_score):
	score = new_score
	$RichTextLabel.text = "Score: %s" % score
