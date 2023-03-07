package org.slf4j.spi;

import java.StdTypes;

@:native("org.slf4j.spi.LoggingEventBuilder")
/**
 * This is the main interface in slf4j's fluent API for creating
 * {@link org.slf4j.event.LoggingEvent logging events}.
 * 
 * @author Ceki G&uuml;lc&uuml;
 * @since 2.0.0
 */
extern interface LoggingEventBuilder {
	/**
	 * Add an argument supplier to the event being built.
	 *
	 * @param objectSupplier an Object supplier to add.
	 * @return a LoggingEventBuilder, usually <b>this</b>.
	 */
	public overload function addArgument(objectSupplier:java.util.function.Supplier<Dynamic>):org.slf4j.spi.LoggingEventBuilder;

	/**
	 * Add an argument to the event being built.
	 *
	 * @param p an Object to add.
	 * @return a LoggingEventBuilder, usually <b>this</b>.
	 */
	public overload function addArgument(p:Dynamic):org.slf4j.spi.LoggingEventBuilder;

	/**
	 * After the logging event is built, performs actual logging. This method must be called
	 * for logging to occur.
	 *
	 * If the call to {@link #log()}  is omitted, a {@link org.slf4j.event.LoggingEvent LoggingEvent}
	 * will be built but no logging will occur.
	 *
	 * @since 2.0.0-beta0
	 */
	public overload function log():Void;

	/**
	 * Equivalent to calling {@link #setMessage(String)} followed by {@link #log()};
	 *
	 * @param message the message to log
	 */
	public overload function log(message:String):Void;

	/**
	 * Equivalent to calling {@link #setMessage(Supplier)} followed by {@link #log()}
	 *
	 * @param messageSupplier a Supplier returning a message of type String
	 */
	public overload function log(messageSupplier:java.util.function.Supplier<String>):Void;

	/**
	 * Equivalent to calling {@link #setMessage(String)} followed by zero or more calls to
	 * {@link #addArgument(Object)} (depending on the size of args array) and then {@link #log()}
	 *
	 * @param message the message to log
	 * @param args a list (actually an array) of arguments to be used with the message to log
	 */
	public overload function log(message:String, args:java.NativeArray<Dynamic>):Void;

	/**
	 * Equivalent to calling {@link #setMessage(String)} followed by {@link #addArgument(Object)}}
	 * and then {@link #log()}
	 *
	 * @param message the message to log
	 * @param arg an argument to be used with the message to log
	 */
	public overload function log(message:String, arg:Dynamic):Void;

	/**
	 * Equivalent to calling {@link #setMessage(String)} followed by two calls to
	 * {@link #addArgument(Object)} and then {@link #log()}
	 *
	 * @param message the message to log
	 * @param arg0 first argument to be used with the message to log
	 * @param arg1 second argument to be used with the message to log
	 */
	public overload function log(message:String, arg0:Dynamic, arg1:Dynamic):Void;

	/**
	 * Add a {@link org.slf4j.event.KeyValuePair key value pair} to the event being built.
	 *
	 * @param key the key of the key value pair.
	 * @param valueSupplier a supplier of a value for the key value pair.
	 * @return a LoggingEventBuilder, usually <b>this</b>.
	 */
	public overload function addKeyValue(key:String, valueSupplier:java.util.function.Supplier<Dynamic>):org.slf4j.spi.LoggingEventBuilder;

	/**
	 * Add a {@link org.slf4j.event.KeyValuePair key value pair} to the event being built.
	 *
	 * @param key the key of the key value pair.
	 * @param value the value of the key value pair.
	 * @return a LoggingEventBuilder, usually <b>this</b>.
	 */
	public overload function addKeyValue(key:String, value:Dynamic):org.slf4j.spi.LoggingEventBuilder;

	/**
	 * Set the cause for the logging event being built.
	 * @param cause a throwable
	 * @return a LoggingEventBuilder, usually <b>this</b>.
	 */
	public function setCause(cause:java.lang.Throwable):org.slf4j.spi.LoggingEventBuilder;

	/**
	 *  Sets the message of the logging event.
	 *
	 *  @since 2.0.0-beta0
	 */
	public overload function setMessage(message:String):org.slf4j.spi.LoggingEventBuilder;

	/**
	 * Sets the message of the event via a message supplier.
	 *
	 * @param messageSupplier supplies a String to be used as the message for the event
	 * @since 2.0.0-beta0
	 */
	public overload function setMessage(messageSupplier:java.util.function.Supplier<String>):org.slf4j.spi.LoggingEventBuilder;

	/**
	 * A {@link Marker marker} to the event being built.
	 *
	 * @param marker a Marker instance to add.
	 * @return a LoggingEventBuilder, usually <b>this</b>.
	 */
	public function addMarker(marker:org.slf4j.Marker):org.slf4j.spi.LoggingEventBuilder;
}
