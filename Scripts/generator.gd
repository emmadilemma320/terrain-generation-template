extends Node3D

@export var settings: GeneratorSettings
var forest: Node3D
var area: float

# _ready is automatically called by Godot when the scene is 
func _ready() -> void:
	pass
	
func generate_forest() -> void:
	area = (2*settings.radius*PI)**2
	print(area)
	
func generate_decor(type: DecorTypeSettings) -> void:
	pass
