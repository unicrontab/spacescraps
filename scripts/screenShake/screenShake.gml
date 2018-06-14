/// @desc ScreenShake(intensity, frames);
/// @arg intensity sets strength of stregth
/// @arg Frames sets the length of the shake in frames

with (oCamera) {
	if (argument0 > shakeRemaining) {
		shakeIntensity = argument0;
		shakeRemaining = argument0;
		shakeLength = argument1;
	}
}
