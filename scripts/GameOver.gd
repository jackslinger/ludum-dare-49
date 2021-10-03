extends Control

func _on_PlayAgain_pressed():
	$VBoxContainer/Score.reset()
	get_tree().change_scene("res://scenes/Main.tscn")
