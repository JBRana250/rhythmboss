extends Node2D

@export var input_dir: float
@export var motion: Vector2 = Vector2()

@export var h_deceleration: float
@export var h_acceleration: float
@export var max_h_speed: float
@export var gravity: float
@export var cut_jump_velocity: float

func globalSetInputDirection(new_input_dir: float):
	input_dir = new_input_dir

func globalPlayerJump():
	if owner.current_state == "grounded":
		motion.y -= 500

func globalPlayerCutJump():
	if motion.y < cut_jump_velocity:
		motion.y = cut_jump_velocity

func _physics_process(delta: float):
	if input_dir == 0:
		if !(motion.x > -0.5 and motion.x < 0.5): # if motion.x is outside the boundaries of -0.5 and 0.5
			motion.x = move_toward(motion.x, 0, h_deceleration) # moves motion.x towards 0
		else:
			motion.x = 0 # sets to 0
	else:
		motion.x += (input_dir * h_acceleration * delta)
		motion.x = clamp(motion.x, -max_h_speed, max_h_speed)
	
	owner.velocity = motion
	
	owner.move_and_slide()
