extends ball_modifier
class_name mod_dupe

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func trigger_effect(ball: Ball):
	var dupe = ball.clone()
