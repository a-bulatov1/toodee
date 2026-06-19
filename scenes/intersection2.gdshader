shader_type spatial;
render_mode unshaded, cull_disabled, depth_test_disabled, depth_draw_never, blend_mix;
stencil_mode read, compare_equal, 1;

void fragment() {
    ALBEDO = vec3(0.0, 0.0, 0.0);
    ALPHA = 1.0;
}

//void light() {
//	// Called for every pixel for every light affecting the material.
//	// Uncomment to replace the default light processing function with this one.
//}
