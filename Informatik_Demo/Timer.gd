extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

var time = 0
var time_soft_seconds: int = 0
var time_soft_minutes: int = 0
var time_soft_hours: int = 0
var placeholder = ":"
 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time+=delta
	time_soft_seconds = time
	while time_soft_seconds>60: 
		time_soft_minutes=time_soft_seconds/60
		time_soft_seconds-=time_soft_minutes*60
	while time_soft_minutes>60:
		time_soft_hours=time_soft_minutes/60
		time_soft_minutes-=time_soft_hours*60
	text = var_to_str(time_soft_hours) + placeholder + var_to_str(time_soft_minutes) + placeholder + var_to_str(time_soft_seconds)
	
