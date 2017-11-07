extends Area2D

var velocity
var speedMultiplier = 8

func _process(delta):
	self.position += velocity * speedMultiplier