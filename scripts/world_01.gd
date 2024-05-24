extends Node2D

@onready var player := $player as CharacterBody2D
@onready var camera := $camera as Camera2D
@onready var control: Control = $HUD/control

func _ready() -> void:
	player.follow_camera(camera)
	player.player_has_died.connect(reload_game)
	control.time_is_up.connect(reload_game)
	Globals.coins = 0
	Globals.score = 0
	Globals.player_life = 3

func reload_game():
	await get_tree().create_timer(1).timeout
	get_tree().reload_current_scene()
