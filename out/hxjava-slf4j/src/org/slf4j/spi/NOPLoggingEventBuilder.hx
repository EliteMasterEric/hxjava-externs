package org.slf4j.spi;

import java.StdTypes;

@:native("org.slf4j.spi.NOPLoggingEventBuilder")
/**
 * <p>A no-operation implementation of {@link LoggingEventBuilder}.</p>
 *
 * <p>As the name indicates, the method in this class do nothing, except when a return value is expected
 * in which case a singleton, i.e. the unique instance of this class is returned.
 * </p
 *
 * @author Ceki G&uuml;lc&uuml;
 * @since 2.0.0
 */
extern class NOPLoggingEventBuilder implements org.slf4j.spi.LoggingEventBuilder {
	/**
	 * <p>Returns the singleton instance of this class.
	 * Used by {@link org.slf4j.Logger#makeLoggingEventBuilder(Level) makeLoggingEventBuilder(Level)}.</p>
	 *
	 * @return the singleton instance of this class
	 */
	public static function singleton():org.slf4j.spi.LoggingEventBuilder;

	public overload function addArgument(objectSupplier:java.util.function.Supplier<Dynamic>):org.slf4j.spi.LoggingEventBuilder;
	public overload function addArgument(p:Dynamic):org.slf4j.spi.LoggingEventBuilder;
	public overload function log():Void;
	public overload function log(message:String):Void;
	public overload function log(messageSupplier:java.util.function.Supplier<String>):Void;
	public overload function log(message:String, args:java.NativeArray<Dynamic>):Void;
	public overload function log(message:String, arg:Dynamic):Void;
	public overload function log(message:String, arg0:Dynamic, arg1:Dynamic):Void;
	public overload function addKeyValue(key:String, value:java.util.function.Supplier<Dynamic>):org.slf4j.spi.LoggingEventBuilder;
	public overload function addKeyValue(key:String, value:Dynamic):org.slf4j.spi.LoggingEventBuilder;
	public function setCause(cause:java.lang.Throwable):org.slf4j.spi.LoggingEventBuilder;
	public overload function setMessage(message:String):org.slf4j.spi.LoggingEventBuilder;
	public overload function setMessage(messageSupplier:java.util.function.Supplier<String>):org.slf4j.spi.LoggingEventBuilder;
	public function addMarker(marker:org.slf4j.Marker):org.slf4j.spi.LoggingEventBuilder;
}
