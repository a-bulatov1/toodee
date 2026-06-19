extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Left"):
		rotation.y -= 0.015
	if Input.is_action_pressed("Right"):
		rotation.y += 0.015
