extends Node

var ScoreLeft: int = 0
var ScoreRight: int = 0
var isGameRunning = true
var ModSpawnerNode: ModSpawner
var balls :Array[Node]

func StartGame():
	ModSpawnerNode = get_node("/root/Pong/ModSpawner")
	ModSpawnerNode.StartTimer()
	setBall()

func _input(event):
	if event.is_action_pressed("reset"):
		setBall()
	if event.is_action_pressed("ui_cancel"):
		StopGame()

func StopGame():
	if isGameRunning:
		isGameRunning = false
		Ui.ShowPauseMenu()
		var ball: Area2D = get_node('/root/Pong/Ball')	
		ball.Stop()

func ResumeGame():
	if not isGameRunning:
		isGameRunning = true
		Ui.HidePauseMenu()
		var ball = get_node('/root/Pong/Ball')
		ball.Resume()

func setBall(aBall: Ball = null):
	balls = get_tree().get_nodes_in_group('ball')
	print(len(balls))
	#todo Baelle nicht resetten wen len > 1
	if len(balls) > 1:
		print(aBall.name)
		if is_instance_valid(aBall):
			aBall.queue_free()
		pass
	balls[0].position = Vector2(800,450)
	balls[0].reset()
	pass

func scorePlayerLeft(aBall: Ball):
	#add player left score
	ScoreLeft += 1
	Ui.addScoreLeft(ScoreLeft)
	print(aBall.name)
	setBall(aBall)
	pass

func scorePlayerRight(aBall: Ball):
	#add player right score
	ScoreRight += 1
	Ui.addScoreRight(ScoreRight)
	setBall(aBall)
	pass

