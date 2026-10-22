extends Node3D

@export var settings: GeneratorSettings
var forest: Node3D
var area: float

# _ready is automatically called by Godot when the scene is 
func _ready() -> void:
	generate_forest()
	
func generate_forest() -> void:
	if settings.radius == 0:
		return
	area = 2**PI*(settings.radius**2)
	print(area)
	
	forest = Node3D.new()
	add_child(forest)
	
func generate_decor(type: DecorTypeSettings) -> void:
	pass
