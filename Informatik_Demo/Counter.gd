extends Label
var Left = 0
var Right = 0
var placeholder = ":"

func _process(delta):
	text = var_to_str(Left) + placeholder +  var_to_str(Right)
	#Right = get_parent().get_node("Ball").right
	#Left = get_parent().get_node("Ball").left


