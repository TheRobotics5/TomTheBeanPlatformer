extends KinematicBody2D

var motion = Vector2()
var grav : float = 1
var up_down : int = 0

const UP = Vector2(0 , -1)



func _physics_process(delta):
	
	motion.y += grav
	
	if Input.is_action_pressed("ui_right"):
		motion.x = 150
		$body.flip_h = false
		$leg.flip_h = false
		$leg2.flip_h = false
		$arm.flip_h = false
		$arm2.flip_h = false
		$AnimationPlayer.play("walk")
		
	elif Input.is_action_pressed("ui_left"):
		motion.x = -150
		$body.flip_h = true
		$leg.flip_h = true
		$leg2.flip_h = true
		$arm.flip_h = true
		$arm2.flip_h = true
		$AnimationPlayer.play("walk")
	else:
		motion.x= 0
		$AnimationPlayer.play("idle")


	if Input.is_action_pressed("spacebar"):
		if is_on_floor():
			motion.y = -100
			$body.flip_v = true
			$leg.flip_v = true
			$leg2.flip_v = true
			$arm.flip_v = true
			$arm2.flip_v = true
			grav = -5

		if is_on_ceiling():
			motion.y = 100
			$body.flip_v = false
			$leg.flip_v = false
			$leg2.flip_v = false
			$arm.flip_v = false
			$arm2.flip_v = false
			grav = 5

	motion = move_and_slide(motion, UP)
	pass