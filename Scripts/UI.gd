extends Node

var scoreLeft: Label
var scoreRight: Label

func addScoreLeft(value: int):
	if not scoreLeft:
		scoreLeft  = get_node('/root/Pong/ScoreLeftLabel')	
	scoreLeft.text = str(value)
	

func addScoreRight(value: int):
	if not scoreRight:
		scoreRight = get_node('/root/Pong/ScoreRightLabel')
	scoreRight.text = str(value)

func ShowPauseMenu():
	var menu = get_node("/root/Pong/PauseMenu")
	menu.show()
	
func HidePauseMenu():
	var menu = get_node("/root/Pong/PauseMenu")
	menu.hide()
