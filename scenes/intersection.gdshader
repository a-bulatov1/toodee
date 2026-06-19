shader_type spatial;
render_mode unshaded, cull_disabled;
stencil_mode write, compare_always, 1;

uniform vec3 plane_position;
uniform vec3 plane_normal;
uniform float thickness = 0.05;

void fragment() {
    float dist = abs(dot(VERTEX - plane_position, plane_normal));
    if (dist > thickness) discard;
    ALBEDO = vec3(140.0/255.0);
}

//void light() {
//	// Called for every pixel for every light affecting the material.
//	// Uncomment to replace the default light processing function with this one.
//}
