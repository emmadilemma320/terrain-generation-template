extends Resource

class_name GeneratorSettings

@export_group("Forest Settings")
@export var radius: float
@export var name: String

@export_group("Decor Settings")
@export var floor: PackedScene
@export var decor: Array[DecorTypeSettings]
