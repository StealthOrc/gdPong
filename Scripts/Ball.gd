extends Area2D
class_name Ball

const SPEED = 1000.0
var SpeedMultiplicator = 1
#start direction will be set in Game.gd
var direction = Vector2.ZERO
var isRunning = true

func reset():
	var mathUtilsScript = preload("res://Scripts/mathUtils.gd")
	var mathUtils = mathUtilsScript.new()
	direction.x = mathUtils.multiClampf(randf_range(-1,1),-0.7,-0.3,0.3,0.7)
	direction.y = randf_range(-1,1)
	SpeedMultiplicator = 1

func _ready():
	name = 'Ball'

func Resume():
	isRunning = true
	
func Stop():
	isRunning = false

func _physics_process(delta):
	if direction:
		position += direction * SpeedMultiplicator * SPEED * delta * int(isRunning)
	else:
		position += Vector2.ZERO

func addSpeed():
	SpeedMultiplicator += 0.2
	
func clone():
	var newBall = load("res://ball.tscn").instantiate()
	get_node("/root/Pong").add_child(newBall)
	newBall.position = position
	newBall.SpeedMultiplicator = SpeedMultiplicator
	newBall.direction = direction * -1
	newBall.isRunning = isRunning
