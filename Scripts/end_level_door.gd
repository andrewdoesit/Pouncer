extends Node2D

# NOTE: The mouse key is the key to leaving the level
var has_mouse_toy = false

func _on_area_2d_body_entered(body):
	if body.is_in_group("player"):
		change_level()


# BUG: fix the level play
# NOTE: lEVEL 4 IS LEVEL 2
#       LEVEL 2 IS LEVEL 4
func change_level():
	var current_scene = get_parent().name
	await get_tree().create_timer(0.5).timeout
	if has_mouse_toy == true:
		if current_scene == "LevelOne":
			# NOTE: the next level will be level 4
			get_tree().change_scene_to_file("res://Scenes/Levels/level_four.tscn")
		elif current_scene == "LevelFour":
			get_tree().change_scene_to_file("res://Scenes/Levels/level_three.tscn")
		elif current_scene == "LevelThree":
			get_tree().change_scene_to_file("res://Scenes/Levels/level_two.tscn")
		elif current_scene == "LevelTwo":
			get_tree().change_scene_to_file("res://Scenes/Levels/level_five.tscn")
		elif current_scene == "LevelFive":
			get_tree().change_scene_to_file("res://Scenes/Levels/Menus/game_win_screen.tscn")
		has_mouse_toy = false

