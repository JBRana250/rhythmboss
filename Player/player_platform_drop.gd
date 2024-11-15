extends Node

func globalDropPlatform():
	owner.set_collision_mask_value(3, false)
	
func globalStopDropPlatform():
	owner.set_collision_mask_value(3, true)
