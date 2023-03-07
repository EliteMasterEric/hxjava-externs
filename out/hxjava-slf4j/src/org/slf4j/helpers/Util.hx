package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.Util")
@:final
/**
 * An internal utility class.
 *
 * @author Alexander Dorokhine
 * @author Ceki G&uuml;lc&uuml;
 */
extern class Util {
	public static function safeGetSystemProperty(key:String):String;
	public static overload function report(msg:String):Void;
	public static overload function report(msg:String, t:java.lang.Throwable):Void;

	/**
	 * Returns the name of the class which called the invoking method.
	 *
	 * @return the name of the class which called the invoking method.
	 */
	public static function getCallingClass():java.lang.Class<Dynamic>;

	public static function safeGetBooleanSystemProperty(key:String):Bool;
}
