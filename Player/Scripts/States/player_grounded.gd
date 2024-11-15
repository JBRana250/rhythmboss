extends State

@export var movement_component: Node2D

func Enter():
	movement_component.motion.y = 0

func Physics_Update(_delta):
	if owner.is_on_floor() == false:
		Transitioned.emit(self, "Airborne")
