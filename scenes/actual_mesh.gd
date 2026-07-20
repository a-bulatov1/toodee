@tool
extends MeshInstance3D
@onready var cut_off:Node3D = get_node("../../Level/SubViewportContainer/SubViewport/Plane");

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var offset = Transform3D(cut_off.transform).translated(Vector3(0, 0, 0.1));
	material_override.set_shader_parameter("cutplane", offset);
	
