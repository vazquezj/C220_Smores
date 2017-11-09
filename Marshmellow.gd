extends Area2D

func _on_Marshmallow_area_entered( area ):
	if area.is_in_group("Fire"):
		print ("Toasting!")
		$MarshmallowTint.modulate.a += 0.2
	if area.is_in_group("Cracker"):
		self.position.x = area.position.x - 350
		self.position.y = area.position.y + 50
	if $MarshmallowTint.modulate.a >= 1:
		$MarshmallowFaces.frame = 1
		$MarshmallowTint.modulate.a = 1