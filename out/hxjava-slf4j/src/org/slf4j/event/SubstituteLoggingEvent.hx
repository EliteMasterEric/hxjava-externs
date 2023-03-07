package org.slf4j.event;

import java.StdTypes;

@:native("org.slf4j.event.SubstituteLoggingEvent")
extern class SubstituteLoggingEvent implements org.slf4j.event.LoggingEvent {
	public function new():Void;
	public function getKeyValuePairs():java.util.List<org.slf4j.event.KeyValuePair>;
	public function getLogger():org.slf4j.helpers.SubstituteLogger;
	public function getMessage():String;
	public function setMessage(message:String):Void;
	public function setLevel(level:org.slf4j.event.Level):Void;
	public function getMarkers():java.util.List<org.slf4j.Marker>;
	public function getLevel():org.slf4j.event.Level;
	public function setLoggerName(loggerName:String):Void;
	public function getTimeStamp():haxe.Int64;
	public function setTimeStamp(timeStamp:haxe.Int64):Void;
	public function setArgumentArray(argArray:java.NativeArray<Dynamic>):Void;
	public function setLogger(logger:org.slf4j.helpers.SubstituteLogger):Void;
	public function setThrowable(throwable:java.lang.Throwable):Void;
	public function getThreadName():String;
	public function setThreadName(threadName:String):Void;
	public function getLoggerName():String;
	public function getArguments():java.util.List<Dynamic>;
	public function getArgumentArray():java.NativeArray<Dynamic>;
	public function getThrowable():java.lang.Throwable;
	public function addMarker(marker:org.slf4j.Marker):Void;
}
