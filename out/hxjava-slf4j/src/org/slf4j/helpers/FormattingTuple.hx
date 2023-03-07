package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.FormattingTuple")
/**
 * Holds the results of formatting done by {@link MessageFormatter}.
 * 
 * @author Joern Huxhorn
 */
extern class FormattingTuple {
	static public var NULL:org.slf4j.helpers.FormattingTuple;
	public overload function new(message:String):Void;
	public function new(message:String, argArray:java.NativeArray<Dynamic>, throwable:java.lang.Throwable):Void;
	public function getArgArray():java.NativeArray<Dynamic>;
	public function getMessage():String;
	public function getThrowable():java.lang.Throwable;
}
