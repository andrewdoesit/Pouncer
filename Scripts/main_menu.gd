extends Control

func _ready():
	$AnimatedSprite2D.play("default")
	$AnimatedSprite2D2.flip_h = true
	$AnimatedSprite2D2.play("default")
	$AnimatedSprite2D3.play("default")
	$AnimatedSprite2D4.play("default")

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/level_one.tscn")


func _on_credits_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/Menus/credits.tscn")
