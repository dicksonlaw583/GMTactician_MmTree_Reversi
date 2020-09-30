///@func relerp(oldmin, oldmax, value, newmin, newmax)
///@param {real} oldmin
///@param {real} oldmax
///@param {real} value
///@param {real} newmin
///@param {real} newmax
///@desc Re-interpolate the given value in context of the new range [newmin, newmax]
function relerp(oldmin, oldmax, value, newmin, newmax) {
	return (value-oldmin)/(oldmax-oldmin)*(newmax-newmin)+newmin;
}
