extends CharacterBody2D


var distance = 0

func _physics_process(delta):
	distance = 150*delta
	if Input.is_key_pressed(KEY_UP):
		if position.y>-170:
			position.y -= distance
	elif Input.is_key_pressed(KEY_DOWN):
			if position.y < 310:
				position.y += distance
