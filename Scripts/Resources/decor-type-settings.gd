extends Resource

class_name DecorTypeSettings

@export_group("General Settings")
@export var name: String
@export var density: float

@export_group("Transform Settings")
@export var rotate: bool
@export var resize: bool
@export var uniform_scale: bool
@export var scale_min: float
@export var scale_max: float

@export_group("Assets")
@export var assets: Array[PackedScene]
