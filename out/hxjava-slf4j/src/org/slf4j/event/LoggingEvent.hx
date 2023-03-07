package org.slf4j.event;

import java.StdTypes;

@:native("org.slf4j.event.LoggingEvent")
/**
 * The minimal interface sufficient for the restitution of data passed
 * by the user to the SLF4J API.
 * 
 * @author Ceki G&uuml;lc&uuml;
 * @since 1.7.15
 */
extern interface LoggingEvent {
	public function getMarkers():java.util.List<org.slf4j.Marker>;
	public function getLevel():org.slf4j.event.Level;
	public function getKeyValuePairs():java.util.List<org.slf4j.event.KeyValuePair>;
	public function getTimeStamp():haxe.Int64;
	public function getThreadName():String;
	public function getLoggerName():String;
	public function getMessage():String;
	public function getArguments():java.util.List<Dynamic>;

	/**
	 * Returns the presumed caller boundary provided by the logging library (not the user of the library). 
	 * Null by default.
	 *  
	 * @return presumed caller, null by default.
	 */
	public function getCallerBoundary():String;

	public function getArgumentArray():java.NativeArray<Dynamic>;
	public function getThrowable():java.lang.Throwable;
}
