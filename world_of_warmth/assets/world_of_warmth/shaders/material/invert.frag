#include frex:shaders/api/fragment.glsl

void frx_startFragment(inout frx_FragmentData fragData) {
	fragData.spriteColor.rgb = 1.0 - fragData.spriteColor.rgb;
}
