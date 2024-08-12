extends Node2D

@onready var puncer = $PouncerTwo/HitArea

func _on_child_exiting_tree(node):
	if node.name == "MouseyToy":
		$EndLevelDoor.has_mouse_toy = true

	if node.name == "PouncerTwo":
		$GameOverMenu.show()

#NOTE: NOT CONNECTED
func _on_hide_box_inside_box():
	$PouncerTwo.hide_kitty == true


func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.play()
