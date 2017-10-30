extends Area2D

func _on_GrahamCracker_area_entered( area ):
	self.position.y = 110

func _on_Flame_area_entered( area ):
	$MarshmallowFaces.frame = 1
