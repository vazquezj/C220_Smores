extends Area2D

var velocity
var speedMultiplier = 5

func _process(delta):
	self.position += velocity * speedMultiplier