extends CharacterBody2D


var score = 1
var counter = 0
var direction = 1
var right
var left

func _ready(): 
	position.x = 575
	position.y = 25
	velocity.y = 80
	if score ==2:
		velocity.x = 140
	else :
		velocity.x = -140


func _physics_process(delta):
	if position.y < -10:
		velocity.y = - velocity.y
	if position.y > 620:
		velocity.y = - velocity.y
	if velocity.x == 0:
		counter += 1
		if direction == 1:
			direction = -1
			if Input.is_key_pressed(KEY_UP):
					velocity.y -= 30
			if Input.is_key_pressed(KEY_DOWN):
					velocity.y += 30
		else:
			direction = 1
			if Input.is_key_pressed(KEY_W):
					velocity.y -= 30
			if Input.is_key_pressed(KEY_S):
					velocity.y += 30
			
		velocity.x = (140 + 10 * counter) * direction 
		
	if position.x<0:
		get_node("/root/Pong/Counter").Left+=1
		score = 1
		_ready()
		
	if position.x>1150:
		get_node("/root/Pong/Counter").Right+=1
		score = 2
		_ready()
	
	move_and_slide()
	

