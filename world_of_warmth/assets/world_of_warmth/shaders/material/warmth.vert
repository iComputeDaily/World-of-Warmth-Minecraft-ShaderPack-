#include frex:shaders/api/vertex.glsl

// Defines adjustalbe values for the image adjustment effects (between 0.0 and 1.0)

varying float warmth;
varying float tint;
varying float contrast;

void frx_startVertex(inout frx_VertexData data) {
	warmth = 0.05;
	tint = 0.03;
	contrast = 0.1;
}
