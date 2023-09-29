extends Area2D

const SPEED = 800.0
const JUMP_VELOCITY = -400.0
@export var isPlayer1 = true

func _physics_process(delta):
	var direction = Vector2.ZERO
	if isPlayer1:
		direction = Vector2(0,Input.get_axis("player1_up", "player1_down"))
	else:
		direction = Vector2(0,Input.get_axis("player2_up", "player2_down"))
	position += direction * SPEED * delta
	position.y = clamp(position.y,70,830)

func _on_area_entered(area):
	if area.is_in_group('ball'):
		area.direction.x *= -1.
		area.addSpeed()

