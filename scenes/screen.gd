extends Node2D

@onready var viewport1: SubViewport = $SubViewport
@onready var viewport2: SubViewport = $SubViewport2
@onready var shared_world: Node3D = $World
@onready var sprite_a: Sprite2D = $Viewport3d
@onready var sprite_b: Sprite2D = $Viewport2d

func _ready() -> void:
	# Reparent FIRST before trying to access anything inside it
	remove_child(shared_world)
	viewport1.add_child(shared_world)
	
	# Share the world
	viewport2.own_world_3d = false
	viewport2.world_3d = viewport1.find_world_3d()
	
	# Wait a frame for the world to register
	await get_tree().process_frame
	
	# Now paths are relative to the new parent
	viewport1.get_node("World/CamCenter/Camera3D").current = true
	$SubViewport2/Level/Plane/Camera3D.current = true  # adjust this path to match your VP2 scene tree
	
	# Assign textures
	sprite_a.texture = viewport1.get_texture()
	sprite_b.texture = viewport2.get_texture()
