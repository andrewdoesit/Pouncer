extends CharacterBody2D

@onready var flea = $AnimatedSprite2D
@export var speed : float = 100
@export var moving_left : bool = true
@export var starting_position : Vector2
@export var move_spaces : int = 200

var move_direction := 1 # -1 = left, 1 = right

func _ready():
	starting_position = position
	flea.flip_h = true
	flea.play("default")


func _physics_process(delta):
	if is_on_wall() or position.x <= starting_position.x - move_spaces or position.x >= starting_position.x:
		move_direction = -1 if move_direction == 1 else 1
		flea.flip_h = move_direction == -1
	
	velocity.x = move_direction * speed
	
	move_and_slide()
