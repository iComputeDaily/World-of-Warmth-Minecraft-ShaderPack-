#include frex:shaders/api/fragment.glsl

varying float warmth;

void frx_startFragment(inout frx_FragmentData fragData) {
	fragData.spriteColor.r = clamp(fragData.spriteColor.r + warmth, 0.0, 1.0);
	fragData.spriteColor.b = clamp(fragData.spriteColor.b - warmth, 0.0, 1.0);
}
