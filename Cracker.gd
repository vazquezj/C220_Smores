extends Area2D

var lose = false

func _on_GrahamCracker_area_entered( area ):
	#print (area.get_node("ChocolateFaces").frame)
	if area.is_in_group("Creep"):
		if area.get_node("MarshmallowFaces").frame == 0:
			$".".lose_condition()
		#if area.get_node("ChocolateFaces").frame == 0:
			#$".".lose_condition()

func lose_condition():
	if lose == false:
		lose = true
		$"../LoseScreen".position = $"../Player".global_position
		$"../LoseScreen".visible = true

func _process(delta):
	if Input.is_action_just_pressed("restart_game") and lose == true:
		get_tree().reload_current_scene()