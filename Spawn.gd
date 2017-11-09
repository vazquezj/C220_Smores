extends Position2D

var marshmallowsLeft = 3
var spawn = true

func _on_SpawnTimer_timeout():
	if spawn == true:
		var newMarshmallow = load("res://Marshmallow.tscn").instance()
		$"..".add_child(newMarshmallow)
		newMarshmallow.position = self.position
		marshmallowsLeft -= 1
	if marshmallowsLeft == 0:
		spawn = false