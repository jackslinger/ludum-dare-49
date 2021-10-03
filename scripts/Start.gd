extends Control

func _on_PlayGame_pressed():
	get_tree().change_scene("res://scenes/Main.tscn")

func _on_HowToPlay_pressed():
	$HowToPlayDialog.popup_centered()


func _on_Credits_pressed():
	$CreditDialog.popup_centered()
