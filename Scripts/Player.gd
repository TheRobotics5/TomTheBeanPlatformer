extends KinematicBody2D

var motion = Vector2()
var grav : float = 3.5
var walk_speed : int = 250
var respawnPoint

# var win = preload("res://Scripts/win_var.gd")
onready var win = get_node("../GlobalHolder")
#var win = 0

const UP = Vector2(0 , -1)

func _ready():
	respawnPoint = global_transform

	$rev_leg.hide()
	$rev_leg2.hide()
	$rev_arm.hide()
	$rev_arm2.hide()
	$rev_body.hide()
	$body.show()
	$leg.show()
	$leg2.show()
	$arm.show()
	$arm2.show()
	$AnimationPlayer.play("idle")

	print(win.RunCode(45))


# warning-ignore:unused_argument
func _physics_process(delta):

	motion.y += grav

	if win == 0:
		if Input.is_action_pressed("ui_right"):
			motion.x = 250
			$body.flip_h = false
			$rev_body.flip_h = false
			$AnimationPlayer.play("walk")

		elif Input.is_action_pressed("ui_left"):
			motion.x = -walk_speed
			$body.flip_h = true
			$rev_body.flip_h = true
			$AnimationPlayer.play("walk")
		else:
			motion.x= 0
			$AnimationPlayer.play("idle")

		if Input.is_action_pressed("spacebar"):
			if is_on_floor():
				motion.y = -walk_speed
				$body.hide()
				$leg.hide()
				$leg2.hide()
				$arm.hide()
				$arm2.hide()
				$rev_body.show()
				$rev_leg.show()
				$rev_leg2.show()
				$rev_arm.show()
				$rev_arm2.show()
				grav = -8

			if is_on_ceiling():
				motion.y = 100
				$body.show()
				$leg.show()
				$leg2.show()
				$arm.show()
				$arm2.show()
				$rev_body.hide()
				$rev_leg.hide()
				$rev_leg2.hide()
				$rev_arm.hide()
				$rev_arm2.hide()
				grav = 8
		motion = move_and_slide(motion, UP)

# warning-ignore:unused_argument
func _on_Limits_area_exited(area):
	print ("died")
	global_transform = respawnPoint
