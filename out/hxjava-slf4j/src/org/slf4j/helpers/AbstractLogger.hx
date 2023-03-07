package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.AbstractLogger")
/**
 * An abstract implementation which delegates actual logging work to the 
 * {@link #handleNormalizedLoggingCall(Level, Marker, String, Object[], Throwable)} method.
 * 
 * @author Ceki G&uuml;lc&uuml;
 * @since 2.0
 */
extern class AbstractLogger implements org.slf4j.Logger, implements java.io.Serializable {
	private var name:String;
	public function new():Void;
	public overload function warn(msg:String):Void;
	public overload function warn(msg:String, t:java.lang.Throwable):Void;
	public overload function warn(format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function warn(format:String, arg:Dynamic):Void;
	public overload function warn(marker:org.slf4j.Marker, msg:String):Void;
	public overload function warn(format:String, arg1:Dynamic, arg2:Dynamic):Void;
	public overload function warn(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	public overload function warn(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function warn(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	public overload function warn(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
	public overload function trace(msg:String):Void;
	public overload function trace(msg:String, t:java.lang.Throwable):Void;
	public overload function trace(format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function trace(format:String, arg:Dynamic):Void;
	public overload function trace(marker:org.slf4j.Marker, msg:String):Void;
	public overload function trace(format:String, arg1:Dynamic, arg2:Dynamic):Void;
	public overload function trace(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	public overload function trace(marker:org.slf4j.Marker, format:String, argArray:java.NativeArray<Dynamic>):Void;
	public overload function trace(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	public overload function trace(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
	public function getName():String;

	/**
	 * Replace this instance with a homonymous (same name) logger returned 
	 * by LoggerFactory. Note that this method is only called during 
	 * deserialization.
	 * 
	 * <p>
	 * This approach will work well if the desired ILoggerFactory is the one
	 * referenced by {@link org.slf4j.LoggerFactory} However, if the user manages its logger hierarchy
	 * through a different (non-static) mechanism, e.g. dependency injection, then
	 * this approach would be mostly counterproductive.
	 * 
	 * @return logger with same name as returned by LoggerFactory
	 * @throws ObjectStreamException
	 */
	private function readResolve():Dynamic;

	public overload function debug(msg:String):Void;
	public overload function debug(msg:String, t:java.lang.Throwable):Void;
	public overload function debug(format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function debug(format:String, arg:Dynamic):Void;
	public overload function debug(marker:org.slf4j.Marker, msg:String):Void;
	public overload function debug(format:String, arg1:Dynamic, arg2:Dynamic):Void;
	public overload function debug(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	public overload function debug(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function debug(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	public overload function debug(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
	private function getFullyQualifiedCallerName():String;
	public overload function error(msg:String):Void;
	public overload function error(msg:String, t:java.lang.Throwable):Void;
	public overload function error(format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function error(format:String, arg:Dynamic):Void;
	public overload function error(marker:org.slf4j.Marker, msg:String):Void;
	public overload function error(format:String, arg1:Dynamic, arg2:Dynamic):Void;
	public overload function error(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	public overload function error(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function error(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	public overload function error(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;

	/**
	 * Given various arguments passed as parameters, perform actual logging.
	 * 
	 * <p>This method assumes that the separation of the args array into actual
	 * objects and a throwable has been already operated.
	 * 
	 * @param level the SLF4J level for this event
	 * @param marker  The marker to be used for this event, may be null.
	 * @param messagePattern The message pattern which will be parsed and formatted
	 * @param arguments  the array of arguments to be formatted, may be null
	 * @param throwable  The exception whose stack trace should be logged, may be null
	 */
	private function handleNormalizedLoggingCall(level:org.slf4j.event.Level, marker:org.slf4j.Marker, messagePattern:String,
		arguments:java.NativeArray<Dynamic>, throwable:java.lang.Throwable):Void;

	public overload function info(msg:String):Void;
	public overload function info(msg:String, t:java.lang.Throwable):Void;
	public overload function info(format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function info(format:String, arg:Dynamic):Void;
	public overload function info(marker:org.slf4j.Marker, msg:String):Void;
	public overload function info(format:String, arg1:Dynamic, arg2:Dynamic):Void;
	public overload function info(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	public overload function info(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function info(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	public overload function info(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
}
