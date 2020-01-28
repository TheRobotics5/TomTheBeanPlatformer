extends Area2D

signal collided

# warning-ignore:unused_argument
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			emit_signal("collided")
		else:
			pass