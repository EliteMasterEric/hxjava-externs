package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.MarkerIgnoringBase")
/**
 * This class serves as base for adapters or native implementations of logging systems 
 * lacking Marker support. In this implementation, methods taking marker data 
 * simply invoke the corresponding method without the Marker argument, discarding 
 * any marker data passed as argument.
 * 
 * @author Ceki Gulcu
 * @deprecated
 */
extern class MarkerIgnoringBase extends org.slf4j.helpers.NamedLoggerBase, implements org.slf4j.Logger {
	public function new():Void;
	public overload function warn(marker:org.slf4j.Marker, msg:String):Void;
	public overload function warn(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	public overload function warn(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function warn(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	public overload function warn(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
	public overload function trace(marker:org.slf4j.Marker, msg:String):Void;
	public overload function trace(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	public overload function trace(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function trace(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	public overload function trace(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
	public overload function debug(marker:org.slf4j.Marker, msg:String):Void;
	public overload function debug(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	public overload function debug(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function debug(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	public overload function debug(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
	public function isInfoEnabled(marker:org.slf4j.Marker):Bool;
	public function isErrorEnabled(marker:org.slf4j.Marker):Bool;
	public function isTraceEnabled(marker:org.slf4j.Marker):Bool;
	public function toString():String;
	public function isDebugEnabled(marker:org.slf4j.Marker):Bool;
	public function isWarnEnabled(marker:org.slf4j.Marker):Bool;
	public overload function error(marker:org.slf4j.Marker, msg:String):Void;
	public overload function error(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	public overload function error(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function error(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	public overload function error(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
	public overload function info(marker:org.slf4j.Marker, msg:String):Void;
	public overload function info(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	public overload function info(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function info(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	public overload function info(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
}
