package org.slf4j.spi;

import java.StdTypes;

@:native("org.slf4j.spi.DefaultLoggingEventBuilder")
/**  Default implementation of {@link LoggingEventBuilder} */
extern class DefaultLoggingEventBuilder implements org.slf4j.spi.LoggingEventBuilder, implements org.slf4j.spi.CallerBoundaryAware {
	private var loggingEvent:org.slf4j.event.DefaultLoggingEvent;
	private var logger:org.slf4j.Logger;
	public function new(logger:org.slf4j.Logger, level:org.slf4j.event.Level):Void;
	public overload function addArgument(objectSupplier:java.util.function.Supplier<Dynamic>):org.slf4j.spi.LoggingEventBuilder;
	public overload function addArgument(p:Dynamic):org.slf4j.spi.LoggingEventBuilder;
	// private overload function log(aLoggingEvent:org.slf4j.event.LoggingEvent):Void;
	public overload function log():Void;
	public overload function log(message:String):Void;
	public overload function log(messageSupplier:java.util.function.Supplier<String>):Void;
	public overload function log(message:String, args:java.NativeArray<Dynamic>):Void;
	public overload function log(message:String, arg:Dynamic):Void;
	public overload function log(message:String, arg0:Dynamic, arg1:Dynamic):Void;
	public overload function addKeyValue(key:String, value:java.util.function.Supplier<Dynamic>):org.slf4j.spi.LoggingEventBuilder;
	public overload function addKeyValue(key:String, value:Dynamic):org.slf4j.spi.LoggingEventBuilder;
	public function setCallerBoundary(fqcn:String):Void;
	public function setCause(t:java.lang.Throwable):org.slf4j.spi.LoggingEventBuilder;
	public overload function setMessage(message:String):org.slf4j.spi.LoggingEventBuilder;
	public overload function setMessage(messageSupplier:java.util.function.Supplier<String>):org.slf4j.spi.LoggingEventBuilder;

	/**
	 * Add a marker to the current logging event being built.
	 * 
	 * It is possible to add multiple markers to the same logging event.
	 *
	 * @param marker the marker to add
	 */
	public function addMarker(marker:org.slf4j.Marker):org.slf4j.spi.LoggingEventBuilder;
}
