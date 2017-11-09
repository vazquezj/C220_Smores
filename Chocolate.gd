extends Area2D

func _on_Chocolate_area_entered( area ):
	if area.is_in_group("Fire"):
		print ("Toasting!")
		$ChocolateTint.modulate.a += 0.34
	if area.is_in_group("Cracker"):
		self.position.x = area.position.x - 350
		self.position.y = area.position.y + 50
	if $ChocolateTint.modulate.a >= 1:
		$ChocolateFaces.frame = 1
		$ChocolateTint.modulate.a = 1