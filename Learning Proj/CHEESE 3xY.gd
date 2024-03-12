extends StaticBody2D

var og_pos
var steps = 100
var direction = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	og_pos = self.position.y
	print(self.position.y)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.y += direction * 17
	if self.position.y >=  og_pos + steps:
		direction = -1
	elif self.position.y <= og_pos - steps:
		direction = 1
