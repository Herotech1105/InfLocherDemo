extends CharacterBody2D




func _physics_process(delta):
	var velocity = 150*delta
	if Input.is_key_pressed(KEY_UP):
		if position.y>-170:
			position.y -= velocity
	if Input.is_key_pressed(KEY_DOWN):
		if position.y < 310:
			position.y += velocity

