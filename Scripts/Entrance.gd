extends Area2D

var scenename : String = "none"

var win = preload("res://Scripts/win_var.gd")

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			scenename = get_tree().get_current_scene().get_name()
			print (scenename)
			$"../AnimationPlayer".play("entered")
			$"../AnimationPlayer".queue("none")
			$"../Animation".start()
			win = 1


func _on_Animation_timeout():
	win = 0
	if scenename == "Level1":
		get_tree().change_scene("res://Levels/Level2.tscn")
	elif scenename == "Level2":
		get_tree().change_scene("res://Levels/Level3.tscn")