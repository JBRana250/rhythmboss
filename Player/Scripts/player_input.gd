extends Node

@export var movement_component: Node2D
@export var camera_component: Node
@export var platform_component: Node
@export var input_dir: float

func _input(_event):
	
	#Movement Inputs
	input_dir = Input.get_axis("move_left", "move_right")
	movement_component.globalSetInputDirection(input_dir)

	if Input.is_action_just_pressed("jump"):
		movement_component.globalPlayerJump()
	
	if Input.is_action_just_released("jump"):
		movement_component.globalPlayerCutJump()
	
	if Input.is_action_pressed("zoom_in"):
		camera_component.globalZoomIn()
	
	if Input.is_action_pressed("zoom_out"):
		camera_component.globalZoomOut()
	
	if Input.is_action_just_pressed("down"):
		platform_component.globalDropPlatform()
	
	if Input.is_action_just_released("down"):
		platform_component.globalStopDropPlatform()
