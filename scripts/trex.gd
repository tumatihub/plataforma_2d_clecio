extends CharacterBody2D

var move_speed := 50.0
var direction := 1
var health_points := 3
@onready var sprite: Sprite2D = $sprite
@onready var anim: AnimationPlayer = $anim
@onready var fireball_spawn_point: Marker2D = $fireball_spawn_point
@onready var ground_detector: RayCast2D = $ground_detector
@onready var player_detector: RayCast2D = $player_detector

func _physics_process(delta: float) -> void:
	if is_on_wall():
		flip_enemy()
	
	if not ground_detector.is_colliding():
		flip_enemy()
	
	velocity.x = move_speed * direction
	
	move_and_slide()

func flip_enemy():
	direction *= -1
	sprite.scale.x  *= -1
	player_detector.scale.x *= -1
