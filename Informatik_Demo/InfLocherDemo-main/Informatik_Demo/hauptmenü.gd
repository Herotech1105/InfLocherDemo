extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var scene = load("res://timer.tscn")
	var instance = scene.instantiate()
	add_child(instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://pong.tscn")
	
	
func _on_button_2_pressed():
	get_tree().quit()
