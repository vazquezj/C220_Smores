extends Position2D

var marshmallowsLeft = 3
var marshmallowSpawn = true
var chocolatesLeft = 3
var chocolateSpawn = true

func _on_MarshmallowSpawnTimer_timeout():
	if marshmallowSpawn == true:
		var newMarshmallow = load("res://Marshmallow.tscn").instance()
		$"..".add_child(newMarshmallow)
		newMarshmallow.position = self.position
		marshmallowsLeft -= 1
	if marshmallowsLeft == 0:
		marshmallowSpawn = false

func _on_ChocolateSpawnTimer_timeout():
	if chocolateSpawn == true:
		var newChocolate = load("res://Chocolate.tscn").instance()
		$"..".add_child(newChocolate)
		newChocolate.position = self.position
		chocolatesLeft -= 1
	if chocolatesLeft == 0:
		chocolateSpawn = false