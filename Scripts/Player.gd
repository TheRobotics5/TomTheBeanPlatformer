extends KinematicBody2D

var motion = Vector2()
var grav : int = 10

const UP = Vector2(0 , -1)

func _physics_process(delta):
	
	motion.y += grav
	
	if Input.is_action_pressed("ui_right"):
		motion.x = 100
		$Sprite.flip_h = true

	elif Input.is_action_pressed("ui_left"):
		motion.x = -100
		$Sprite.flip_h = true

	else:
		motion.x= 0

	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = -400
			$Sprite.flip_v = true
			grav = -10

	if is_on_ceiling():
		if Input.is_action_pressed("ui_down"):
			motion.y = 400
			$Sprite.flip_v = false
			grav = 10

	motion = move_and_slide(motion, UP)
	pass