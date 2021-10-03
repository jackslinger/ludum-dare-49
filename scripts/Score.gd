extends Control

export (Resource) var score

func _ready():
	score.connect("score_changed", self, "_on_score_changed")
	$RichTextLabel.text = "Score: %s" % score.value

func add_score(delta):
	score.add_score(delta)

func reset():
	score.reset()

func _on_score_changed(value):
	$RichTextLabel.text = "Score: %s" % value
