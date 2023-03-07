package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.SubstituteLogger")
/**
 * A logger implementation which logs via a delegate logger. By default, the delegate is a
 * {@link NOPLogger}. However, a different delegate can be set at any time.
 * 
 * <p>See also the <a href="http://www.slf4j.org/codes.html#substituteLogger">relevant
 * error code</a> documentation.
 *
 * @author Chetan Mehrotra
 * @author Ceki Gulcu
 */
extern class SubstituteLogger implements org.slf4j.Logger {
	public var createdPostInitialization:Bool;
	public function new(name:String, eventQueue:java.util.Queue<org.slf4j.event.SubstituteLoggingEvent>, createdPostInitialization:Bool):Void;
	public function getName():String;
	public function isDelegateNull():Bool;
	public function log(event:org.slf4j.event.LoggingEvent):Void;
	public function atWarn():org.slf4j.spi.LoggingEventBuilder;
	public function atInfo():org.slf4j.spi.LoggingEventBuilder;
	public overload function isWarnEnabled():Bool;
	public overload function isWarnEnabled(marker:org.slf4j.Marker):Bool;
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
	 * Return the delegate logger instance if set. Otherwise, return a {@link NOPLogger}
	 * instance.
	 */
	public function delegate():org.slf4j.Logger;

	public function atTrace():org.slf4j.spi.LoggingEventBuilder;
	public overload function trace(msg:String):Void;
	public overload function trace(msg:String, t:java.lang.Throwable):Void;
	public overload function trace(format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function trace(format:String, arg:Dynamic):Void;
	public overload function trace(marker:org.slf4j.Marker, msg:String):Void;
	public overload function trace(format:String, arg1:Dynamic, arg2:Dynamic):Void;
	public overload function trace(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;
	public overload function trace(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;
	public overload function trace(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;
	public overload function trace(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
	public function isEnabledForLevel(level:org.slf4j.event.Level):Bool;
	public overload function isInfoEnabled():Bool;
	public overload function isInfoEnabled(marker:org.slf4j.Marker):Bool;
	public function hashCode():Int;
	public overload function isErrorEnabled():Bool;
	public overload function isErrorEnabled(marker:org.slf4j.Marker):Bool;
	public overload function isTraceEnabled():Bool;
	public overload function isTraceEnabled(marker:org.slf4j.Marker):Bool;
	public function atLevel(level:org.slf4j.event.Level):org.slf4j.spi.LoggingEventBuilder;
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
	public function atError():org.slf4j.spi.LoggingEventBuilder;
	public function isDelegateEventAware():Bool;

	/**
	 * Typically called after the {@link org.slf4j.LoggerFactory} initialization phase is completed.
	 * @param delegate
	 */
	public function setDelegate(delegate:org.slf4j.Logger):Void;

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
	public function isDelegateNOP():Bool;
	public function makeLoggingEventBuilder(level:org.slf4j.event.Level):org.slf4j.spi.LoggingEventBuilder;
	public function equals(o:Dynamic):Bool;
	public overload function isDebugEnabled():Bool;
	public overload function isDebugEnabled(marker:org.slf4j.Marker):Bool;
	public function atDebug():org.slf4j.spi.LoggingEventBuilder;
}
