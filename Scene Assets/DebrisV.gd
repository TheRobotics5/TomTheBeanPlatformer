extends KinematicBody2D

var up = true
var motion = Vector2()

func _ready():
	$AnimationPlayer.play("Vert")

func _physics_process(delta):
	if up == true:
		motion.y = -100
	else:
		motion.y = 100
	motion = move_and_slide(motion)

func _on_Up_timeout():
	if up == true:
		up = false
	else:
		up = true
	$Up.start()