extends CharacterBody2D




func _physics_process(delta):
	var velocity = 150*delta
	if Input.is_key_pressed(KEY_W):
		if position.y>-120:
			position.y -= velocity
	if Input.is_key_pressed(KEY_S):
		if position.y < 360:
			position.y += velocity
