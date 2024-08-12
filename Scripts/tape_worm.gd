extends CharacterBody2D


var grow = false

func _process(delta):
	if grow == false:
		$AnimatedSprite2D.play("idle")


func _on_area_2d_body_entered(body):
	if body.is_in_group("player"):
		grow = true
		$AnimatedSprite2D.play("grow")


func _on_area_2d_body_exited(body):
	if body.is_in_group("player"):
		await get_tree().create_timer(0.25).timeout
		grow = false
