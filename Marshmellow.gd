extends Area2D

func _on_Marshmellow_area_entered( area ):
	print("Burning!")
	get_node("AnimationPlayer").play("MarshmellowFaces")