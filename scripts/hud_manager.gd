extends Control

@onready var coins_counter: Label = $container/coins_container/coins_counter as Label
@onready var timer_counter: Label = $container/timer_container/timer_counter as Label
@onready var score_counter: Label = $container/score_container/score_counter as Label
@onready var life_counter: Label = $container/life_container/life_counter as Label

func _ready() -> void:
	coins_counter.text = str("%04d" % Globals.coins)
	score_counter.text = str("%06d" % Globals.score)

func _process(delta: float) -> void:
	coins_counter.text = str("%04d" % Globals.coins)
	score_counter.text = str("%06d" % Globals.score)
