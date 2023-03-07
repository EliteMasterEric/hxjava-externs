package org.slf4j;

import java.StdTypes;

@:native("org.slf4j.Logger")
/**
 * The org.slf4j.Logger interface is the main user entry point of SLF4J API.
 * It is expected that logging takes place through concrete implementations
 * of this interface.
 * 
 * <H3>Typical usage pattern:</H3>
 * <pre>
 * import org.slf4j.Logger;
 * import org.slf4j.LoggerFactory;
 *
 * public class Wombat {
 *
 *   <span style="color:green">final static Logger logger = LoggerFactory.getLogger(Wombat.class);</span>
 *   Integer t;
 *   Integer oldT;
 *
 *   public void setTemperature(Integer temperature) {
 *     oldT = t;
 *     t = temperature;
 *     <span style="color:green">logger.debug("Temperature set to {}. Old temperature was {}.", t, oldT);</span>
 *     if (temperature.intValue() &gt; 50) {
 *       <span style="color:green">logger.info("Temperature has risen above 50 degrees.");</span>
 *     }
 *   }
 * }
 * </pre>
 *
 * <p>Note that version 2.0 of the SLF4J API introduces a <a href="../../../manual.html#fluent">fluent api</a>,
 * the most significant API change to occur in the last 20 years.
 *
 * <p>Be sure to read the FAQ entry relating to <a href="../../../faq.html#logging_performance">parameterized
 * logging</a>. Note that logging statements can be parameterized in
 * <a href="../../../faq.html#paramException">presence of an exception/throwable</a>.
 *
 * <p>Once you are comfortable using loggers, i.e. instances of this interface, consider using
 * <a href="MDC.html">MDC</a> as well as <a href="Marker.html">Markers</a>.
 *
 * @author Ceki G&uuml;lc&uuml;
 */
extern interface Logger {
	/**
	 * Return the name of this <code>Logger</code> instance.
	 * @return name of this logger instance 
	 */
	public function getName():String;

	/**
	 * Log a message at the DEBUG level.
	 *
	 * @param msg the message string to be logged
	 */
	public overload function debug(msg:String):Void;

	/**
	 * Log an exception (throwable) at the DEBUG level with an
	 * accompanying message.
	 *
	 * @param msg the message accompanying the exception
	 * @param t   the exception (throwable) to log
	 */
	public overload function debug(msg:String, t:java.lang.Throwable):Void;

	/**
	 * Log a message at the DEBUG level according to the specified format
	 * and arguments.
	 * 
	 * <p>This form avoids superfluous string concatenation when the logger
	 * is disabled for the DEBUG level. However, this variant incurs the hidden
	 * (and relatively small) cost of creating an <code>Object[]</code> before invoking the method,
	 * even if this logger is disabled for DEBUG. The variants taking
	 * {@link #debug(String, Object) one} and {@link #debug(String, Object, Object) two}
	 * arguments exist solely in order to avoid this hidden cost.
	 *
	 * @param format    the format string
	 * @param arguments a list of 3 or more arguments
	 */
	public overload function debug(format:String, arguments:java.NativeArray<Dynamic>):Void;

	/**
	 * Log a message at the DEBUG level according to the specified format
	 * and argument.
	 * 
	 * <p>This form avoids superfluous object creation when the logger
	 * is disabled for the DEBUG level. 
	 *
	 * @param format the format string
	 * @param arg    the argument
	 */
	public overload function debug(format:String, arg:Dynamic):Void;

	/**
	 * Log a message with the specific Marker at the DEBUG level.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param msg    the message string to be logged
	 */
	public overload function debug(marker:org.slf4j.Marker, msg:String):Void;

	/**
	 * Log a message at the DEBUG level according to the specified format
	 * and arguments.
	 * 
	 * <p>This form avoids superfluous object creation when the logger
	 * is disabled for the DEBUG level. 
	 *
	 * @param format the format string
	 * @param arg1   the first argument
	 * @param arg2   the second argument
	 */
	public overload function debug(format:String, arg1:Dynamic, arg2:Dynamic):Void;

	/**
	 * This method is similar to {@link #debug(String, Throwable)} method except that the
	 * marker data is also taken into consideration.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param msg    the message accompanying the exception
	 * @param t      the exception (throwable) to log
	 */
	public overload function debug(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;

	/**
	 * This method is similar to {@link #debug(String, Object...)}
	 * method except that the marker data is also taken into
	 * consideration.
	 *
	 * @param marker    the marker data specific to this log statement
	 * @param format    the format string
	 * @param arguments a list of 3 or more arguments
	 */
	public overload function debug(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;

	/**
	 * This method is similar to {@link #debug(String, Object)} method except that the
	 * marker data is also taken into consideration.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param format the format string
	 * @param arg    the argument
	 */
	public overload function debug(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;

	/**
	 * This method is similar to {@link #debug(String, Object, Object)}
	 * method except that the marker data is also taken into
	 * consideration.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param format the format string
	 * @param arg1   the first argument
	 * @param arg2   the second argument
	 */
	public overload function debug(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;

	/**
	 * Entry point for fluent-logging for {@link org.slf4j.event.Level#ERROR} level. 
	 *  
	 * @return LoggingEventBuilder instance as appropriate for level ERROR
	 * @since 2.0
	 */
	public function atError():org.slf4j.spi.LoggingEventBuilder;

	/**
	 * Entry point for fluent-logging for {@link org.slf4j.event.Level#WARN} level. 
	 *  
	 * @return LoggingEventBuilder instance as appropriate for level WARN
	 * @since 2.0
	 */
	public function atWarn():org.slf4j.spi.LoggingEventBuilder;

	/**
	 * Entry point for fluent-logging for {@link org.slf4j.event.Level#INFO} level. 
	 *  
	 * @return LoggingEventBuilder instance as appropriate for level INFO
	 * @since 2.0
	 */
	public function atInfo():org.slf4j.spi.LoggingEventBuilder;

	/**
	 * Is the logger instance enabled for the WARN level?
	 *
	 * @return True if this Logger is enabled for the WARN level,
	 *         false otherwise.
	 */
	public overload function isWarnEnabled():Bool;

	/**
	 * Similar to {@link #isWarnEnabled()} method except that the marker
	 * data is also taken into consideration.
	 *
	 * @param marker The marker data to take into consideration
	 * @return True if this Logger is enabled for the WARN level,
	 *         false otherwise.
	 */
	public overload function isWarnEnabled(marker:org.slf4j.Marker):Bool;

	/**
	 * Log a message at the ERROR level.
	 *
	 * @param msg the message string to be logged
	 */
	public overload function error(msg:String):Void;

	/**
	 * Log an exception (throwable) at the ERROR level with an
	 * accompanying message.
	 *
	 * @param msg the message accompanying the exception
	 * @param t   the exception (throwable) to log
	 */
	public overload function error(msg:String, t:java.lang.Throwable):Void;

	/**
	 * Log a message at the ERROR level according to the specified format
	 * and arguments.
	 * 
	 * <p>This form avoids superfluous string concatenation when the logger
	 * is disabled for the ERROR level. However, this variant incurs the hidden
	 * (and relatively small) cost of creating an <code>Object[]</code> before invoking the method,
	 * even if this logger is disabled for ERROR. The variants taking
	 * {@link #error(String, Object) one} and {@link #error(String, Object, Object) two}
	 * arguments exist solely in order to avoid this hidden cost.
	 *
	 * @param format    the format string
	 * @param arguments a list of 3 or more arguments
	 */
	public overload function error(format:String, arguments:java.NativeArray<Dynamic>):Void;

	/**
	 * Log a message at the ERROR level according to the specified format
	 * and argument.
	 * 
	 * <p>This form avoids superfluous object creation when the logger
	 * is disabled for the ERROR level. 
	 *
	 * @param format the format string
	 * @param arg    the argument
	 */
	public overload function error(format:String, arg:Dynamic):Void;

	/**
	 * Log a message with the specific Marker at the ERROR level.
	 *
	 * @param marker The marker specific to this log statement
	 * @param msg    the message string to be logged
	 */
	public overload function error(marker:org.slf4j.Marker, msg:String):Void;

	/**
	 * Log a message at the ERROR level according to the specified format
	 * and arguments.
	 * 
	 * <p>This form avoids superfluous object creation when the logger
	 * is disabled for the ERROR level. 
	 *
	 * @param format the format string
	 * @param arg1   the first argument
	 * @param arg2   the second argument
	 */
	public overload function error(format:String, arg1:Dynamic, arg2:Dynamic):Void;

	/**
	 * This method is similar to {@link #error(String, Throwable)}
	 * method except that the marker data is also taken into
	 * consideration.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param msg    the message accompanying the exception
	 * @param t      the exception (throwable) to log
	 */
	public overload function error(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;

	/**
	 * This method is similar to {@link #error(String, Object...)}
	 * method except that the marker data is also taken into
	 * consideration.
	 *
	 * @param marker    the marker data specific to this log statement
	 * @param format    the format string
	 * @param arguments a list of 3 or more arguments
	 */
	public overload function error(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;

	/**
	 * This method is similar to {@link #error(String, Object)} method except that the
	 * marker data is also taken into consideration.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param format the format string
	 * @param arg    the argument
	 */
	public overload function error(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;

	/**
	 * This method is similar to {@link #error(String, Object, Object)}
	 * method except that the marker data is also taken into
	 * consideration.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param format the format string
	 * @param arg1   the first argument
	 * @param arg2   the second argument
	 */
	public overload function error(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;

	/**
	 * Entry point for fluent-logging for {@link org.slf4j.event.Level#TRACE} level. 
	 *  
	 * @return LoggingEventBuilder instance as appropriate for level TRACE
	 * @since 2.0
	 */
	public function atTrace():org.slf4j.spi.LoggingEventBuilder;

	/**
	 * Log a message at the WARN level.
	 *
	 * @param msg the message string to be logged
	 */
	public overload function warn(msg:String):Void;

	/**
	 * Log an exception (throwable) at the WARN level with an
	 * accompanying message.
	 *
	 * @param msg the message accompanying the exception
	 * @param t   the exception (throwable) to log
	 */
	public overload function warn(msg:String, t:java.lang.Throwable):Void;

	/**
	 * Log a message at the WARN level according to the specified format
	 * and arguments.
	 * 
	 * <p>This form avoids superfluous string concatenation when the logger
	 * is disabled for the WARN level. However, this variant incurs the hidden
	 * (and relatively small) cost of creating an <code>Object[]</code> before invoking the method,
	 * even if this logger is disabled for WARN. The variants taking
	 * {@link #warn(String, Object) one} and {@link #warn(String, Object, Object) two}
	 * arguments exist solely in order to avoid this hidden cost.
	 *
	 * @param format    the format string
	 * @param arguments a list of 3 or more arguments
	 */
	public overload function warn(format:String, arguments:java.NativeArray<Dynamic>):Void;

	/**
	 * Log a message at the WARN level according to the specified format
	 * and argument.
	 * 
	 * <p>This form avoids superfluous object creation when the logger
	 * is disabled for the WARN level. 
	 *
	 * @param format the format string
	 * @param arg    the argument
	 */
	public overload function warn(format:String, arg:Dynamic):Void;

	/**
	 * Log a message with the specific Marker at the WARN level.
	 *
	 * @param marker The marker specific to this log statement
	 * @param msg    the message string to be logged
	 */
	public overload function warn(marker:org.slf4j.Marker, msg:String):Void;

	/**
	 * Log a message at the WARN level according to the specified format
	 * and arguments.
	 * 
	 * <p>This form avoids superfluous object creation when the logger
	 * is disabled for the WARN level. 
	 *
	 * @param format the format string
	 * @param arg1   the first argument
	 * @param arg2   the second argument
	 */
	public overload function warn(format:String, arg1:Dynamic, arg2:Dynamic):Void;

	/**
	 * This method is similar to {@link #warn(String, Throwable)} method
	 * except that the marker data is also taken into consideration.
	 *
	 * @param marker the marker data for this log statement
	 * @param msg    the message accompanying the exception
	 * @param t      the exception (throwable) to log
	 */
	public overload function warn(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;

	/**
	 * This method is similar to {@link #warn(String, Object...)}
	 * method except that the marker data is also taken into
	 * consideration.
	 *
	 * @param marker    the marker data specific to this log statement
	 * @param format    the format string
	 * @param arguments a list of 3 or more arguments
	 */
	public overload function warn(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;

	/**
	 * This method is similar to {@link #warn(String, Object)} method except that the
	 * marker data is also taken into consideration.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param format the format string
	 * @param arg    the argument
	 */
	public overload function warn(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;

	/**
	 * This method is similar to {@link #warn(String, Object, Object)}
	 * method except that the marker data is also taken into
	 * consideration.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param format the format string
	 * @param arg1   the first argument
	 * @param arg2   the second argument
	 */
	public overload function warn(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;

	/**
	 * Log a message at the TRACE level.
	 *
	 * @param msg the message string to be logged
	 * @since 1.4
	 */
	public overload function trace(msg:String):Void;

	/**
	 * Log an exception (throwable) at the TRACE level with an
	 * accompanying message.
	 *
	 * @param msg the message accompanying the exception
	 * @param t   the exception (throwable) to log
	 * @since 1.4
	 */
	public overload function trace(msg:String, t:java.lang.Throwable):Void;

	/**
	 * Log a message at the TRACE level according to the specified format
	 * and arguments.
	 * 
	 * <p>This form avoids superfluous string concatenation when the logger
	 * is disabled for the TRACE level. However, this variant incurs the hidden
	 * (and relatively small) cost of creating an <code>Object[]</code> before invoking the method,
	 * even if this logger is disabled for TRACE. The variants taking {@link #trace(String, Object) one} and
	 * {@link #trace(String, Object, Object) two} arguments exist solely in order to avoid this hidden cost.
	 *
	 * @param format    the format string
	 * @param arguments a list of 3 or more arguments
	 * @since 1.4
	 */
	public overload function trace(format:String, arguments:java.NativeArray<Dynamic>):Void;

	/**
	 * Log a message at the TRACE level according to the specified format
	 * and argument.
	 * 
	 * <p>This form avoids superfluous object creation when the logger
	 * is disabled for the TRACE level. 
	 *
	 * @param format the format string
	 * @param arg    the argument
	 * @since 1.4
	 */
	public overload function trace(format:String, arg:Dynamic):Void;

	/**
	 * Log a message with the specific Marker at the TRACE level.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param msg    the message string to be logged
	 * @since 1.4
	 */
	public overload function trace(marker:org.slf4j.Marker, msg:String):Void;

	/**
	 * Log a message at the TRACE level according to the specified format
	 * and arguments.
	 * 
	 * <p>This form avoids superfluous object creation when the logger
	 * is disabled for the TRACE level. 
	 *
	 * @param format the format string
	 * @param arg1   the first argument
	 * @param arg2   the second argument
	 * @since 1.4
	 */
	public overload function trace(format:String, arg1:Dynamic, arg2:Dynamic):Void;

	/**
	 * This method is similar to {@link #trace(String, Throwable)} method except that the
	 * marker data is also taken into consideration.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param msg    the message accompanying the exception
	 * @param t      the exception (throwable) to log
	 * @since 1.4
	 */
	public overload function trace(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;

	/**
	 * This method is similar to {@link #trace(String, Object...)}
	 * method except that the marker data is also taken into
	 * consideration.
	 *
	 * @param marker   the marker data specific to this log statement
	 * @param format   the format string
	 * @param argArray an array of arguments
	 * @since 1.4
	 */
	public overload function trace(marker:org.slf4j.Marker, format:String, argArray:java.NativeArray<Dynamic>):Void;

	/**
	 * This method is similar to {@link #trace(String, Object)} method except that the
	 * marker data is also taken into consideration.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param format the format string
	 * @param arg    the argument
	 * @since 1.4
	 */
	public overload function trace(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;

	/**
	 * This method is similar to {@link #trace(String, Object, Object)}
	 * method except that the marker data is also taken into
	 * consideration.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param format the format string
	 * @param arg1   the first argument
	 * @param arg2   the second argument
	 * @since 1.4
	 */
	public overload function trace(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;

	/**
	 * Returns whether this Logger is enabled for a given {@link Level}. 
	 * 
	 * @param level
	 * @return true if enabled, false otherwise.
	 */
	public function isEnabledForLevel(level:org.slf4j.event.Level):Bool;

	/**
	 * Is the logger instance enabled for the INFO level?
	 *
	 * @return True if this Logger is enabled for the INFO level,
	 *         false otherwise.
	 */
	public overload function isInfoEnabled():Bool;

	/**
	 * Similar to {@link #isInfoEnabled()} method except that the marker
	 * data is also taken into consideration.
	 *
	 * @param marker The marker data to take into consideration
	 * @return true if this Logger is enabled for the INFO level,
	 *         false otherwise.
	 */
	public overload function isInfoEnabled(marker:org.slf4j.Marker):Bool;

	/**
	 * <p>Make a new {@link LoggingEventBuilder} instance as appropriate for this logger implementation.
	 * This default implementation always returns a new instance of {@link DefaultLoggingEventBuilder}.</p>
	 * <p></p>
	 * <p>This method is intended to be used by logging systems implementing the SLF4J API and <b>not</b>
	 * by end users.</p>
	 * <p></p>
	 * <p>Also note that a {@link LoggingEventBuilder} instance should be built for all levels,
	 * independently of the level argument. In other words, this method is an <b>unconditional</b>
	 * constructor for the {@link LoggingEventBuilder} appropriate for this logger implementation.</p>
	 * <p></p>
	 * @param level desired level for the event builder
	 * @return a new {@link LoggingEventBuilder} instance as appropriate for <b>this</b> logger
	 * @since 2.0
	 */
	public function makeLoggingEventBuilder(level:org.slf4j.event.Level):org.slf4j.spi.LoggingEventBuilder;

	/**
	 * Is the logger instance enabled for the ERROR level?
	 *
	 * @return True if this Logger is enabled for the ERROR level,
	 *         false otherwise.
	 */
	public overload function isErrorEnabled():Bool;

	/**
	 * Similar to {@link #isErrorEnabled()} method except that the
	 * marker data is also taken into consideration.
	 *
	 * @param marker The marker data to take into consideration
	 * @return True if this Logger is enabled for the ERROR level,
	 *         false otherwise.
	 */
	public overload function isErrorEnabled(marker:org.slf4j.Marker):Bool;

	/**
	 * Is the logger instance enabled for the TRACE level?
	 *
	 * @return True if this Logger is enabled for the TRACE level,
	 *         false otherwise.
	 * @since 1.4
	 */
	public overload function isTraceEnabled():Bool;

	/**
	 * Similar to {@link #isTraceEnabled()} method except that the
	 * marker data is also taken into account.
	 *
	 * @param marker The marker data to take into consideration
	 * @return True if this Logger is enabled for the TRACE level,
	 *         false otherwise.
	 *         
	 * @since 1.4
	 */
	public overload function isTraceEnabled(marker:org.slf4j.Marker):Bool;

	/**
	 * Is the logger instance enabled for the DEBUG level?
	 *
	 * @return True if this Logger is enabled for the DEBUG level,
	 *         false otherwise.
	 */
	public overload function isDebugEnabled():Bool;

	/**
	 * Similar to {@link #isDebugEnabled()} method except that the
	 * marker data is also taken into account.
	 *
	 * @param marker The marker data to take into consideration
	 * @return True if this Logger is enabled for the DEBUG level,
	 *         false otherwise. 
	 */
	public overload function isDebugEnabled(marker:org.slf4j.Marker):Bool;

	/**
	 * Make a new {@link LoggingEventBuilder} instance as appropriate for this logger and the
	 * desired {@link Level} passed as parameter. If this Logger is disabled for the given Level, then
	 * a {@link  NOPLoggingEventBuilder} is returned.
	 *
	 *
	 * @param level desired level for the event builder
	 * @return a new {@link LoggingEventBuilder} instance as appropriate for this logger
	 * @since 2.0
	 */
	public function atLevel(level:org.slf4j.event.Level):org.slf4j.spi.LoggingEventBuilder;

	/**
	 * Entry point for fluent-logging for {@link org.slf4j.event.Level#DEBUG} level. 
	 *  
	 * @return LoggingEventBuilder instance as appropriate for level DEBUG
	 * @since 2.0
	 */
	public function atDebug():org.slf4j.spi.LoggingEventBuilder;

	/**
	 * Log a message at the INFO level.
	 *
	 * @param msg the message string to be logged
	 */
	public overload function info(msg:String):Void;

	/**
	 * Log an exception (throwable) at the INFO level with an
	 * accompanying message.
	 *
	 * @param msg the message accompanying the exception
	 * @param t   the exception (throwable) to log
	 */
	public overload function info(msg:String, t:java.lang.Throwable):Void;

	/**
	 * Log a message at the INFO level according to the specified format
	 * and arguments.
	 * 
	 * <p>This form avoids superfluous string concatenation when the logger
	 * is disabled for the INFO level. However, this variant incurs the hidden
	 * (and relatively small) cost of creating an <code>Object[]</code> before invoking the method,
	 * even if this logger is disabled for INFO. The variants taking
	 * {@link #info(String, Object) one} and {@link #info(String, Object, Object) two}
	 * arguments exist solely in order to avoid this hidden cost.
	 *
	 * @param format    the format string
	 * @param arguments a list of 3 or more arguments
	 */
	public overload function info(format:String, arguments:java.NativeArray<Dynamic>):Void;

	/**
	 * Log a message at the INFO level according to the specified format
	 * and argument.
	 * 
	 * <p>This form avoids superfluous object creation when the logger
	 * is disabled for the INFO level. 
	 *
	 * @param format the format string
	 * @param arg    the argument
	 */
	public overload function info(format:String, arg:Dynamic):Void;

	/**
	 * Log a message with the specific Marker at the INFO level.
	 *
	 * @param marker The marker specific to this log statement
	 * @param msg    the message string to be logged
	 */
	public overload function info(marker:org.slf4j.Marker, msg:String):Void;

	/**
	 * Log a message at the INFO level according to the specified format
	 * and arguments.
	 * 
	 * <p>This form avoids superfluous object creation when the logger
	 * is disabled for the INFO level. 
	 *
	 * @param format the format string
	 * @param arg1   the first argument
	 * @param arg2   the second argument
	 */
	public overload function info(format:String, arg1:Dynamic, arg2:Dynamic):Void;

	/**
	 * This method is similar to {@link #info(String, Throwable)} method
	 * except that the marker data is also taken into consideration.
	 *
	 * @param marker the marker data for this log statement
	 * @param msg    the message accompanying the exception
	 * @param t      the exception (throwable) to log
	 */
	public overload function info(marker:org.slf4j.Marker, msg:String, t:java.lang.Throwable):Void;

	/**
	 * This method is similar to {@link #info(String, Object...)}
	 * method except that the marker data is also taken into
	 * consideration.
	 *
	 * @param marker    the marker data specific to this log statement
	 * @param format    the format string
	 * @param arguments a list of 3 or more arguments
	 */
	public overload function info(marker:org.slf4j.Marker, format:String, arguments:java.NativeArray<Dynamic>):Void;

	/**
	 * This method is similar to {@link #info(String, Object)} method except that the
	 * marker data is also taken into consideration.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param format the format string
	 * @param arg    the argument
	 */
	public overload function info(marker:org.slf4j.Marker, format:String, arg:Dynamic):Void;

	/**
	 * This method is similar to {@link #info(String, Object, Object)}
	 * method except that the marker data is also taken into
	 * consideration.
	 *
	 * @param marker the marker data specific to this log statement
	 * @param format the format string
	 * @param arg1   the first argument
	 * @param arg2   the second argument
	 */
	public overload function info(marker:org.slf4j.Marker, format:String, arg1:Dynamic, arg2:Dynamic):Void;
}
