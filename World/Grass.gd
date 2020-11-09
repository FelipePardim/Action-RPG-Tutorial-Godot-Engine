extends Node2D

func create_grass_effect():
	var GrassEffect = load("res://Effects/GrassEffect.tscn")
	#Grass Effect instance     =     Grass Effect Scene
	var grassEffect = GrassEffect.instance()
	#Getting the main scene tree
	var world = get_tree().current_scene
	#Adding the Grass Effect scene to the main treee
	world.add_child(grassEffect)
	# Updating the Grass Effect position on the main scene
	grassEffect.global_position = global_position

func _on_Hurtbox_area_entered(area):
	create_grass_effect()
	queue_free()
