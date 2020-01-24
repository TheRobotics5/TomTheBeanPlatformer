extends KinematicBody2D

var right = true
var motion = Vector2()

func _ready():
	$AnimationPlayer.play("Horiz")

func _physics_process(delta):
	if right == true:
		motion.x = 100
	else:
		motion.x = -100
	motion = move_and_slide(motion)

func _on_Right_timeout():
	if right == true:
		right = false
	else:
		right = true
	$Right.start()