extends State

@export var movement_component: Node2D

func Physics_Update(_delta):
	if owner.is_on_floor() == true:
		Transitioned.emit(self, "Grounded")
	
	movement_component.motion.y += movement_component.gravity
