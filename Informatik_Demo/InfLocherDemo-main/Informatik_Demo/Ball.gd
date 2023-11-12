extends CharacterBody2D


var score = 1
var counter = 0
var direction = 1
var right
var left

func _ready(): 
	position.x = 575
	position.y = 325
	velocity.y = 50
	if score ==2:
		velocity.x = 80
	else :
		velocity.x = -80


func _physics_process(delta):
	if position.y < -20:
		velocity.y = - velocity.y
	if position.y > 620:
		velocity.y = - velocity.y
	if velocity.x == 0:
		counter += 1
		if direction == 1:
			velocity.x = (80 + 10 * counter) * direction 
			direction = -1
		else:
			velocity.x = (80 + 10 * counter) * direction 
			direction = 1
	
	if position.x<0:
		#left+=1
		score = 1
		_ready()
		
	if position.x>1150:
		#right+=1
		score = 2
		_ready()
	
	move_and_slide()
	

