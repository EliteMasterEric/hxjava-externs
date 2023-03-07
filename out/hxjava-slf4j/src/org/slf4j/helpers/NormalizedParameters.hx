package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.NormalizedParameters")
/**
 * Holds normalized call parameters.
 * 
 * Includes utility methods such as {@link #normalize(String, Object[], Throwable)} to help the normalization of parameters.
 * 
 * @author ceki
 * @since 2.0
 */
extern class NormalizedParameters {
	public overload function new(message:String, arguments:java.NativeArray<Dynamic>):Void;
	public function new(message:String, arguments:java.NativeArray<Dynamic>, throwable:java.lang.Throwable):Void;

	/**
	 * Helper method to determine if an {@link Object} array contains a
	 * {@link Throwable} as last element
	 *
	 * @param argArray The arguments off which we want to know if it contains a
	 *                 {@link Throwable} as last element
	 * @return if the last {@link Object} in argArray is a {@link Throwable} this
	 *         method will return it, otherwise it returns null
	 */
	public static function getThrowableCandidate(argArray:java.NativeArray<Dynamic>):java.lang.Throwable;

	/**
	 * Helper method to get all but the last element of an array
	 *
	 * @param argArray The arguments from which we want to remove the last element
	 *
	 * @return a copy of the array without the last element
	 */
	public static function trimmedCopy(argArray:java.NativeArray<Dynamic>):java.NativeArray<Dynamic>;

	public static overload function normalize(event:org.slf4j.event.LoggingEvent):org.slf4j.helpers.NormalizedParameters;

	/**
	 * This method serves to normalize logging call invocation parameters.
	 * 
	 * More specifically, if a throwable argument is not supplied directly, it
	 * attempts to extract it from the argument array.
	 */
	public static overload function normalize(msg:String, arguments:java.NativeArray<Dynamic>, t:java.lang.Throwable):org.slf4j.helpers.NormalizedParameters;

	public function getMessage():String;
	public function getArguments():java.NativeArray<Dynamic>;
	public function getThrowable():java.lang.Throwable;
}
