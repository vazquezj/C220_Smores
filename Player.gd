extends KinematicBody2D

func _ready():
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
		direction.y += 1
		self.rotation_deg = 90
	
	if Input.is_action_pressed("player_right") and Input.is_action_pressed("player_down"):
		direction.x += 1
		direction.y += 1
		self.rotation_deg = 45
	if Input.is_action_pressed("player_down") and Input.is_action_pressed("player_left"):
		direction.x -= 1
		direction.y += 1
		self.rotation_deg = 135
	if Input.is_action_pressed("player_left") and Input.is_action_pressed("player_up"):
		direction.x -= 1
		direction.y -= 1
		self.rotation_deg = 225
	if Input.is_action_pressed("player_up") and Input.is_action_pressed("player_right"):
		direction.x += 1
		direction.y -= 1
		self.rotation_deg = 315
	
	var speed = 300
	self.move_and_slide(direction.normalized() * speed)
	
	if Input.is_action_pressed("flame"):
		$"Flame".visible = true
	else:
		$"Flame".visible = false
	
	if Input.is_action_just_pressed("campfire") and $"../CampfiresLeft".campfiresLeft > 0:
		$"../CampfiresLeft".decrease_campfiresLeft()
		var newCampfire = load("res://Campfire.tscn").instance()
		$"..".add_child(newCampfire)
		newCampfire.position = self.position