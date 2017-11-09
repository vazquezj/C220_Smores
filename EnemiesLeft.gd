extends Label

var enemiesLeft = 8
var win = false

func increase_campfiresLeft():
	if enemiesLeft > 0:
		enemiesLeft -= 1
		self.text = "Enemies Left: " + str(enemiesLeft)
	if enemiesLeft <= 0:
		win = true
		$"../WinScreen".position = $"../Player".global_position
		$"../WinScreen".visible = true

func _process(delta):
	if Input.is_action_just_pressed("restart_game") and win == true:
		get_tree().reload_current_scene()