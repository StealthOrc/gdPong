extends Area2D
class_name ball_modifier

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func trigger_effect(ball: Ball):
	pass

func on_after_are_entered():
	queue_free()

func _on_area_entered(area:Ball):
	trigger_effect(area)
	on_after_are_entered()

