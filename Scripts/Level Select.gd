extends Button

func _ready():
	pass


func _on_Level_Select_pressed():
	$Start.hide()
	$b1.show()
	$b2.show()
	$b3.show()
	$b4.show()
	$b5.show()
	$b6.show()
	$b7.show()
	$b8.show()
	$"Next page".show()
	$Back.show()


func _on_Back_pressed():
	$Start.show()
	$b1.hide()
	$b2.hide()
	$b3.hide()
	$b4.hide()
	$b5.hide()
	$b6.hide()
	$b7.hide()
	$b8.hide()
	$"Next page".hide()
	$Back.hide()


func _on_b1_pressed():
	get_tree().change_scene("res://Levels/Level1.tscn")

func _on_b2_pressed():
	get_tree().change_scene("res://Levels/Level2.tscn")

func _on_b3_pressed():
	get_tree().change_scene("res://Levels/Level3.tscn")

func _on_b4_pressed():
	get_tree().change_scene("res://Levels/Level4.tscn")

func _on_b5_pressed():
	get_tree().change_scene("res://Levels/Level5.tscn")

func _on_b6_pressed():
	get_tree().change_scene("res://Levels/Level6.tscn")

func _on_b7_pressed():
	get_tree().change_scene("res://Levels/Level7.tscn")

func _on_b8_pressed():
	get_tree().change_scene("res://Levels/Level8.tscn")