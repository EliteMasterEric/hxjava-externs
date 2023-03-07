package org.slf4j.event;

import java.StdTypes;

@:native("org.slf4j.event.Level")
@:final
/**
 * SLF4J's internal representation of Level.
 * 
 * 
 * @author Ceki G&uuml;lc&uuml;
 * @since 1.7.15
 */
extern class Level extends java.lang.Enum<org.slf4j.event.Level> {
	public function toInt():Int;
	public static function valueOf(name:String):org.slf4j.event.Level;
	public static function values():java.NativeArray<org.slf4j.event.Level>;
	public static function intToLevel(levelInt:Int):org.slf4j.event.Level;

	/**  Returns the string representation of this Level. */
	public function toString():String;
}
