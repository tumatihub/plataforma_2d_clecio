extends CharacterBody2D

var move_speed := 50.0
var direction := 1
@onready var anim: AnimatedSprite2D = $anim

func _process(delta: float) -> void:
	position.x += move_speed * direction * delta

func set_direction(dir):
	direction = dir
	if dir < 0:
		anim.flip_h = true
	else:
		anim.flip_h = false

