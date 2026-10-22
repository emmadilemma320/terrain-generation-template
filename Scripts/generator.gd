extends Node3D

@export var settings: GeneratorSettings
var forest: Node3D
var area: float

# _ready is automatically called by Godot when the scene is 
func _ready() -> void:
	generate_forest()
	
func generate_forest() -> void:
	if settings.width == 0 or settings.decor.is_empty():
		return
	area = settings.width**2
	print(area)
	
	forest = Node3D.new()
	add_child(forest)
	
	for type in settings.decor:
		generate_decor(type)
	
func generate_decor(decor_settings: DecorTypeSettings) -> void:
	var amount: int = int(area*decor_settings.density)
	if amount == 0.0 or decor_settings.assets.is_empty(): 
		return
	
	var decor_type_parent = Node3D.new()
	decor_type_parent.name = decor_settings.name + " parent"
	forest.add_child(decor_type_parent)
	
	for i in amount:
		var random_type: int = randi_range(0, decor_settings.assets.size()-1)
		var new_item = decor_settings.assets[random_type].instantiate()
		new_item.name = decor_settings.name + " " + str(i+1)
		
		decor_type_parent.add_child(new_item)
		
	
