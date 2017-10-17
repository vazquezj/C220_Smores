extends KinematicBody2D

func _ready():
	pass

func _process(delta):
	var direction = Vector2(0,0)
	
	if Input.is_action_pressed("ui_right"):
		direction.x += 100
	if Input.is_action_pressed("ui_left"):
		direction.x -= 100
	if Input.is_action_pressed("ui_down"):
		direction.y += 100
	if Input.is_action_pressed("ui_up"):
		direction.y -= 100
	self.move_and_slide(direction)