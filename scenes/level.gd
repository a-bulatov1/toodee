extends Node3D

var WIDTH = 10
var wall_block: PackedScene = preload("res://scenes/wall_block.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(-5,6):
		for j in range(-5, 6):
			var cube = wall_block.instantiate()
			cube.position.x = i
			cube.position.z = j
			add_child(cube)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
