extends Area2D

@export var isLeftGoal: bool = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	if area.is_in_group('ball'):
		print(area.name)
		if isLeftGoal:
			Game.scorePlayerLeft(area)
		else:
			Game.scorePlayerRight(area)
