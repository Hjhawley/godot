extends Control

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		GameLoader.return_to_menu()
