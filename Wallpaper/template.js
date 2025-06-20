/**
 *window.wallpaperPropertyListener = {
 *    applyUserProperties: function(properties) {
 *        if (properties.r) {
 *			if ( properties.r.value != 3){
 *				value=0
 *				return value;
 *			}
 *            // Do something with yourproperty
 *        }
 *    },
 *};
 */

'use strict';

/**
 * @param {Number} value - for property 'alpha'
 * @return {Number} - update current property value
 */
export function update(value) {
	if (engine.userProperties.r != 3){
		value=0
	} else{
		value=1
	}
	console.log(value)
	return value;
}
export function update(value) {
	if (engine.userProperties.newproperty1 != 1 || engine.userProperties.newproperty2 != 1){
		value=0
	} else{
		value=1
	}
	console.log(value)
	return value;
}
