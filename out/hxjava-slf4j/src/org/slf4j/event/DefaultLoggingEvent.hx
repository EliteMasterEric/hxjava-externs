package org.slf4j.event;

import java.StdTypes;

@:native("org.slf4j.event.DefaultLoggingEvent")
/**
 * A default implementation of {@link LoggingEvent}.
 * 
 * @author Ceki G&uuml;lc&uuml;
 *
 * @since 2.0.0
 */
extern class DefaultLoggingEvent implements org.slf4j.event.LoggingEvent {
	public function new(level:org.slf4j.event.Level, logger:org.slf4j.Logger):Void;
	public function addArguments(args:java.NativeArray<Dynamic>):Void;
	public function getKeyValuePairs():java.util.List<org.slf4j.event.KeyValuePair>;
	public function getMessage():String;
	public function setCallerBoundary(fqcn:String):Void;
	public function setMessage(message:String):Void;
	public function getCallerBoundary():String;
	public function getMarkers():java.util.List<org.slf4j.Marker>;
	public function getLevel():org.slf4j.event.Level;
	public function addArgument(p:Dynamic):Void;
	public function getTimeStamp():haxe.Int64;
	public function setTimeStamp(timeStamp:haxe.Int64):Void;
	public function setThrowable(cause:java.lang.Throwable):Void;
	public function addKeyValue(key:String, value:Dynamic):Void;
	public function getThreadName():String;
	public function getArguments():java.util.List<Dynamic>;
	public function getLoggerName():String;
	public function getArgumentArray():java.NativeArray<Dynamic>;
	public function getThrowable():java.lang.Throwable;
	public function addMarker(marker:org.slf4j.Marker):Void;
}
