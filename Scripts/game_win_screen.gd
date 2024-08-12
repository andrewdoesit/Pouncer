extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play()
	
func _on_home_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/Menus/main_menu.tscn")


func _on_credit_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/Menus/credits.tscn")
