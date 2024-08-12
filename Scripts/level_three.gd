extends Node2D



func _on_child_exiting_tree(node):
	if node.name == "MouseyToy":
		$EndLevelDoor.has_mouse_toy = true

	if node.name == "PouncerTwo":
		$GameOverMenu.show()


func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.play()
