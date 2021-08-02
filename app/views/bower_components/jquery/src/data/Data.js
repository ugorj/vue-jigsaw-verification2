define([
	"../core",
	"../var/rnotwhite",
	"./accepts"
], function( jQuery, rnotwhite ) {

function Data() {
	// Support: Android < 4,
	// Old WebKit does not have Object.preventExtensions/freeze method,
	// return new empty object instead with no [[set]] accessor
	Object.defineProperty( this.cache = {}, 0, {
		get: functio