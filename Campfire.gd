extends Sprite

var targetCreep

func _ready():
	#targetCreep = $"../MarshmallowPath/MarshmallowPathFollow"
	pass

func _on_Timer_timeout():
	if targetCreep:
		var newEmber = load("res://Ember.tscn").instance()
		$"..".add_child(newEmber)
		newEmber.position = self.position
		
		var differenceVector = targetCreep.global_position - newEmber.position
		var directionVector = differenceVector.normalized()
		newEmber.velocity = directionVector

func _on_FireRange_area_entered( area ):
	if area.is_in_group("Creep"):
		targetCreep = area

func _on_FireRange_area_exited( area ):
	if area.is_in_group("Creep") and area == targetCreep:
		targetCreep = null