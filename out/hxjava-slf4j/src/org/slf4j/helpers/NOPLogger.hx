package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.NOPLogger")
/**
 * A direct NOP (no operation) implementation of {@link Logger}.
 *
 * @author Ceki G&uuml;lc&uuml;
 */
extern class NOPLogger extends org.slf4j.helpers.NamedLoggerBase, implements org.slf4j.Logger {
	/**  The unique instance of NOPLogger. */
	static public var NOP_LOGGER:org.slf4j.helpers.NOPLogger;

	/**
	 * There is no point in creating multiple instances of NOPLogger. 
	 * 
	 * The present constructor should be "private" but we are leaving it as "protected" for compatibility.
	 */
	private function new():Void;

	/** A NOP implementation.  */
	public overload function warn(msg:String):Void;
	/** A NOP implementation.  */
	public overload function warn(msg:String, t:java.lang.Throwable):Void;
	/** A NOP implementation.   */
	public overload function warn(format:String, argArray:java.NativeArray<Dynamic>):Void;
	/** A NOP implementation.  */
	public overload function warn(format:String, arg1:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function warn(marker:org.slf4j.Marker, msg:String):Void;
	/** A NOP implementation.  */
	public overload function warn(format:String, arg1:Dynamic, arg2:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function warn(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	/** A NOP implementation.  */
	public overload function warn(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;
	/** A NOP implementation.  */
	public overload function warn(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function warn(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function trace(msg:String):Void;
	/** A NOP implementation.  */
	public overload function trace(msg:String, t:java.lang.Throwable):Void;
	/** A NOP implementation.   */
	public overload function trace(format:String, argArray:java.NativeArray<Dynamic>):Void;
	/** A NOP implementation.   */
	public overload function trace(format:String, arg:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function trace(marker:org.slf4j.Marker, msg:String):Void;
	/** A NOP implementation.   */
	public overload function trace(format:String, arg1:Dynamic, arg2:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function trace(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	/** A NOP implementation.  */
	public overload function trace(marker:org.slf4j.Marker, format:String, argArray:java.NativeArray<Dynamic>):Void;
	/** A NOP implementation.  */
	public overload function trace(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function trace(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;

	/**  Always returns the string value "NOP". */
	public function getName():String;

	/** A NOP implementation.  */
	public overload function debug(msg:String):Void;
	/** A NOP implementation.  */
	public overload function debug(msg:String, t:java.lang.Throwable):Void;
	/** A NOP implementation.   */
	public overload function debug(format:String, argArray:java.NativeArray<Dynamic>):Void;
	/** A NOP implementation.   */
	public overload function debug(format:String, arg:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function debug(marker:org.slf4j.Marker, msg:String):Void;
	/** A NOP implementation.   */
	public overload function debug(format:String, arg1:Dynamic, arg2:Dynamic):Void;
	public overload function debug(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	public overload function debug(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;
	/** A NOP implementation.  */
	public overload function debug(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function debug(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
	/**
	 * Always returns false.
	 * @return always false
	 */
	public overload function isInfoEnabled():Bool;
	/**
	 * Always returns false.
	 * @return always false
	 */
	public overload function isInfoEnabled(marker:org.slf4j.Marker):Bool;
	/** A NOP implementation.  */
	public overload function isErrorEnabled():Bool;
	/**
	 * Always returns false.
	 * @return always false
	 */
	public overload function isErrorEnabled(marker:org.slf4j.Marker):Bool;
	/**
	 * Always returns false.
	 * @return always false
	 */
	public overload function isTraceEnabled():Bool;
	/**
	 * Always returns false.
	 * @return always false
	 */
	public overload function isTraceEnabled(marker:org.slf4j.Marker):Bool;
	/**
	 * Always returns false.
	 * @return always false
	 */
	public overload function isDebugEnabled():Bool;
	/**
	 * Always returns false.
	 * @return always false
	 */
	public overload function isDebugEnabled(marker:org.slf4j.Marker):Bool;
	/**
	 * Always returns false.
	 * @return always false
	 */
	public overload function isWarnEnabled():Bool;
	/**
	 * Always returns false.
	 * @return always false
	 */
	public overload function isWarnEnabled(marker:org.slf4j.Marker):Bool;
	/** A NOP implementation.  */
	public overload function error(msg:String):Void;
	/** A NOP implementation.  */
	public overload function error(msg:String, t:java.lang.Throwable):Void;
	/** A NOP implementation.   */
	public overload function error(format:String, argArray:java.NativeArray<Dynamic>):Void;
	/** A NOP implementation.  */
	public overload function error(format:String, arg1:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function error(marker:org.slf4j.Marker, msg:String):Void;
	/** A NOP implementation.  */
	public overload function error(format:String, arg1:Dynamic, arg2:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function error(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	/** A NOP implementation.  */
	public overload function error(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;
	/** A NOP implementation.  */
	public overload function error(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function error(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function info(msg:String):Void;
	/** A NOP implementation.  */
	public overload function info(msg:String, t:java.lang.Throwable):Void;
	/** A NOP implementation.   */
	public overload function info(format:String, argArray:java.NativeArray<Dynamic>):Void;
	/** A NOP implementation.  */
	public overload function info(format:String, arg1:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function info(marker:org.slf4j.Marker, msg:String):Void;
	/** A NOP implementation.  */
	public overload function info(format:String, arg1:Dynamic, arg2:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function info(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	/** A NOP implementation.  */
	public overload function info(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;
	/** A NOP implementation.  */
	public overload function info(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	/** A NOP implementation.  */
	public overload function info(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
}
