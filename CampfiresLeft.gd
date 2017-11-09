extends Label

var campfiresLeft = 4

func decrease_campfiresLeft():
	if campfiresLeft > 0:
		campfiresLeft -= 1
		self.text = "Campfires Left: " + str(campfiresLeft)