#include frex:shaders/api/vertex.glsl

varying float warmth;

void frx_startVertex(inout frx_VertexData data) {
	warmth = 0.08;
}
