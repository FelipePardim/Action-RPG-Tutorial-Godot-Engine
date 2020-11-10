extends Node2D

const GrassEffect = preload("res://Effects/GrassEffect.tscn")

func create_grass_effect():
	#Grass Effect instance     =     Grass Effect Scene
	var grassEffect = GrassEffect.instance()
	#Adding the Grass Effect scene to the main treee
	get_parent().add_child(grassEffect)
	# Updating the Grass Effect position on the main scene
	grassEffect.global_position = global_position

func _on_Hurtbox_area_entered(area):
	create_grass_effect()
	queue_free()
