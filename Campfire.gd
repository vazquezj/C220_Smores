extends Sprite

var targetCreep

func _ready():
	targetCreep = $"../MarshmallowPath/MarshmallowPathFollow"
	pass

func _on_Timer_timeout():
	var newEmber = load("res://Ember.tscn").instance()
	$"..".add_child(newEmber)
	newEmber.position = self.position
	
	var differenceVector = targetCreep.global_position - newEmber.position
	var directionVector = differenceVector.normalized()
	newEmber.velocity = directionVector
	print (differenceVector)

func _on_FireRange_area_entered( area ):
	targetCreep = area