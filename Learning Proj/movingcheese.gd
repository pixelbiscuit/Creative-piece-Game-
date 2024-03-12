extends StaticBody2D

var og_pos
var steps = 100
var direction = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	og_pos = self.position.x
	print(self.position.x)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.x += direction * 5
	
	if self.position.x >=  og_pos + steps:
		direction = -1
	elif self.position.x <= og_pos - steps:
		direction = 1
