extends Area2D

var scenename : String = "none"

# warning-ignore:unused_argument
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			$Camera2D.make_current()
			scenename = get_tree().get_current_scene().get_name()
			$"../AnimationPlayer".play("entered")
			$"../Animation".start()



func _on_Animation_timeout():
	if scenename == "Level1":
		get_tree().change_scene("res://Levels/Level2.tscn")
	if scenename == "Level2":
		get_tree().change_scene("res://Levels/Level3.tscn")