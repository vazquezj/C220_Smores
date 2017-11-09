extends Area2D

var lose = false

func _on_GrahamCracker_area_entered( area ):
	#print (area.is_in_group("Creep"))
	#print (area.get_node("MarshmallowFaces").frame)
	if area.is_in_group("Creep") and area.get_node("MarshmallowFaces").frame == 0:
		#print("Losing?")
		$".".lose_condition()
func lose_condition():
	#print ("Lose")
	if lose == false:
		lose = true
		$"../LoseScreen".position = $"../Player".global_position
		$"../LoseScreen".visible = true