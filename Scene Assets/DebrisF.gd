extends KinematicBody2D

var falling = true
var motion = Vector2()
var spawnPoint = Vector2()

func _ready():
	spawnPoint = global_transform

func _physics_process(delta):
	if falling == true:
		motion.x = 350
		motion.y = 350
	else:
		global_transform = spawnPoint
		falling = true
	motion = move_and_slide(motion)

func _on_Falling_timeout():
	falling = false
	$Falling.start()
