extends Area2D

var scenename : String = "none"

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			scenename = get_tree().get_current_scene().get_name()
			get_tree().change_scene("res://Levels/Level2.tscn")
			print (scenename)