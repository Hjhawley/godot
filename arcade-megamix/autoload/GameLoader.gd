extends Node

var menu_scene_path := "res://scenes/MainMenu.tscn"

func start_game(game_def):
	if game_def and game_def.scene_path != "":
		get_tree().change_scene_to_file(game_def.scene_path)

func return_to_menu():
	get_tree().change_scene_to_file(menu_scene_path)
