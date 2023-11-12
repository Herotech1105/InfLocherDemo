extends CharacterBody2D

var start_position: Vector2 = Vector2(-60, 200)

func _ready():
	position = start_position

func _physics_process(delta):
	var velocity = 150*delta
	if Input.is_key_pressed(KEY_W):
		if position.y>-120:
			position.y -= velocity
	if Input.is_key_pressed(KEY_S):
		if position.y < 360:
			position.y += velocity
			

