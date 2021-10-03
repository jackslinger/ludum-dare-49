extends Resource
class_name ScoreResource

signal score_changed(new_value)

var value = 0

func reset():
	value = 0

func add_score(delta):
	value += delta
	emit_signal("score_changed", value)
