extends Area2D

signal debris_col

# warning-ignore:unused_argument
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Debris":
			emit_signal("debris_col")