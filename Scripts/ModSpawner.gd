extends Node
class_name ModSpawner

var timer: Timer

func StartTimer():
	timer.start(2.0)

func StopTimer():
	timer.stop()

func PauseTimer():
	timer.paused = true
	
func UnpauseTimer():
	timer.paused = false

# Called when the node enters the scene tree for the first time.
func _ready():
	timer = Timer.new()
	timer.one_shot = false
	timer.timeout.connect(_on_timer_timeout)
	add_child(timer)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	var Mod: mod_dupe = load("res://mod_dupe.tscn").instantiate()
	Mod.position = Vector2(randf_range(175,1425),randf_range(50,750))
	add_child(Mod)
	print('timer timeout'+str(Mod.position))
