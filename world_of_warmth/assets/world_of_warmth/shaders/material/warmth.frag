#include frex:shaders/api/fragment.glsl

// Get the image adjustment values defined in the vertex shader
varying float warmth;
varying float tint;
varying float contrast;

void frx_startFragment(inout frx_FragmentData fragData) {
	/* Contrast Adjustment
	======================*/
	float factor = ((259 / 255) * (contrast + 1.0)) / (1.0 * ((259 / 255) - contrast)); // Calculate a contrast adjustment factor (idk how it works). This is very inificient
	fragData.spriteColor.r = clamp(factor * (fragData.spriteColor.r - 0.5) + 0.5, 0.0, 1.0); // Apply contrast adjustment for red channel
	fragData.spriteColor.g = clamp(factor * (fragData.spriteColor.g - 0.5) + 0.5, 0.0, 1.0); // Apply contrast adjustment for green channel
	fragData.spriteColor.b = clamp(factor * (fragData.spriteColor.b - 0.5) + 0.5, 0.0, 1.0); // Apply contrast adjustment for blue channel
	
	/* Warmth and Tint Adjustment
	=============================*/
	fragData.spriteColor.r = clamp(fragData.spriteColor.r + warmth, 0.0, 1.0); // Adjust warmth
	fragData.spriteColor.g = clamp(fragData.spriteColor.g + tint, 0.0, 1.0); // Adjust tint
	fragData.spriteColor.b = clamp(fragData.spriteColor.b - warmth, 0.0, 1.0); // Adjust warmth
}
