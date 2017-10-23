extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
func _process(delta):
	var direction = Vector2(0, 0)
	
	if Input.is_action_pressed("player_right"): #Is held down
		#print("right")
		direction.x += 1
		self.rotation_deg = 0
	if Input.is_action_pressed("player_left"): #Is held down
		#print("left")
		direction.x -= 1
		self.rotation_deg = 180
	if Input.is_action_pressed("player_up"): #Is held down
		#print("up")
		direction.y -= 1
		self.rotation_deg = 270
	if Input.is_action_pressed("player_down"): #Is held down
		#print("down")
		direction.y +=1
		self.rotation_deg = 90
	
	var speed = 300
	
	self.move_and_slide(direction.normalized() * speed)
	
	if Input.is_action_pressed("flame"):
		$"Flame".visible = true
	else:
		$"Flame".visible = false