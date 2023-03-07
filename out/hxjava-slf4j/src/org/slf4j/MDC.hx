package org.slf4j;

import java.StdTypes;

@:native("org.slf4j.MDC")
/**
 * This class hides and serves as a substitute for the underlying logging
 * system's MDC implementation.
 * 
 * <p>
 * If the underlying logging system offers MDC functionality, then SLF4J's MDC,
 * i.e. this class, will delegate to the underlying system's MDC. Note that at
 * this time, only two logging systems, namely log4j and logback, offer MDC
 * functionality. For java.util.logging which does not support MDC,
 * {@link BasicMDCAdapter} will be used. For other systems, i.e. slf4j-simple
 * and slf4j-nop, {@link NOPMDCAdapter} will be used.
 *
 * <p>
 * Thus, as a SLF4J user, you can take advantage of MDC in the presence of log4j,
 * logback, or java.util.logging, but without forcing these systems as
 * dependencies upon your users.
 * 
 * <p>
 * For more information on MDC please see the <a
 * href="http://logback.qos.ch/manual/mdc.html">chapter on MDC</a> in the
 * logback manual.
 * 
 * <p>
 * Please note that all methods in this class are static.
 * 
 * @author Ceki G&uuml;lc&uuml;
 * @since 1.4.1
 */
extern class MDC {
	/**
	 * Return a copy of the current thread's context map, with keys and values of
	 * type String. Returned value may be null.
	 * 
	 * @return A copy of the current thread's context map. May be null.
	 * @since 1.5.1
	 */
	public static function getCopyOfContextMap():java.util.Map<String, String>;

	/**
	 * Returns a copy of the deque(stack) referenced by 'key'. May be null.
	 * 
	 * @param key identifies the  stack
	 * @return copy of stack referenced by 'key'. May be null.
	 * 
	 * @since 2.0.0
	 */
	public function getCopyOfDequeByKey(key:String):java.util.Deque<String>;

	/**
	 * Push a value into the deque(stack) referenced by 'key'.
	 *      
	 * @param key identifies the appropriate stack
	 * @param value the value to push into the stack
	 * @since 2.0.0
	 */
	public static function pushByKey(key:String, value:String):Void;

	/**
	 * Get the diagnostic context identified by the <code>key</code> parameter. The
	 * <code>key</code> parameter cannot be null.
	 * 
	 * <p>
	 * This method delegates all work to the MDC of the underlying logging system.
	 *
	 * @param key a key
	 * @return the string value identified by the <code>key</code> parameter.
	 * @throws IllegalArgumentException
	 *           in case the "key" parameter is null
	 */
	public static function get(key:String):String;

	/**
	 * Pop the stack referenced by 'key' and return the value possibly null.
	 * 
	 * @param key identifies the deque(stack)
	 * @return the value just popped. May be null/
	 * @since 2.0.0
	 */
	public static function popByKey(key:String):String;

	/**
	 * Put a diagnostic context value (the <code>val</code> parameter) as identified with the
	 * <code>key</code> parameter into the current thread's diagnostic context map. The
	 * <code>key</code> parameter cannot be null. The <code>val</code> parameter
	 * can be null only if the underlying implementation supports it.
	 *
	 * <p>
	 * This method delegates all work to the MDC of the underlying logging system.
	 * <p>
	 * This method return a <code>Closeable</code> object who can remove <code>key</code> when
	 * <code>close</code> is called.
	 *
	 * <p>
	 * Useful with Java 7 for example :
	 * <code>
	 *   try(MDC.MDCCloseable closeable = MDC.putCloseable(key, value)) {
	 *     ....
	 *   }
	 * </code>
	 *
	 * @param key non-null key
	 * @param val value to put in the map
	 * @return a <code>Closeable</code> who can remove <code>key</code> when <code>close</code>
	 * is called.
	 *
	 * @throws IllegalArgumentException
	 *           in case the "key" parameter is null
	 */
	public static function putCloseable(key:String, val:String):org.slf4j.MDC_MDCCloseable;

	/**  Clear all entries in the MDC of the underlying implementation. */
	public static function clear():Void;

	/**
	 * Set the current thread's context map by first clearing any existing map and
	 * then copying the map passed as parameter. The context map passed as
	 * parameter must only contain keys and values of type String.
	 * 
	 * Null valued argument is allowed (since SLF4J version 2.0.0).
	 * 
	 * @param contextMap
	 *          must contain only keys and values of type String
	 * @since 1.5.1
	 */
	public static function setContextMap(contextMap:java.util.Map<String, String>):Void;

	/**
	 * Put a diagnostic context value (the <code>val</code> parameter) as identified with the
	 * <code>key</code> parameter into the current thread's diagnostic context map. The
	 * <code>key</code> parameter cannot be null. The <code>val</code> parameter
	 * can be null only if the underlying implementation supports it.
	 * 
	 * <p>
	 * This method delegates all work to the MDC of the underlying logging system.
	 *
	 * @param key non-null key 
	 * @param val value to put in the map
	 * 
	 * @throws IllegalArgumentException
	 *           in case the "key" parameter is null
	 */
	public static function put(key:String, val:String):Void;

	/**
	 * Remove the diagnostic context identified by the <code>key</code> parameter using
	 * the underlying system's MDC implementation. The <code>key</code> parameter
	 * cannot be null. This method does nothing if there is no previous value
	 * associated with <code>key</code>.
	 *
	 * @param key  a key
	 * @throws IllegalArgumentException
	 *           in case the "key" parameter is null
	 */
	public static function remove(key:String):Void;

	/**
	 * Returns the MDCAdapter instance currently in use.
	 * 
	 * @return the MDcAdapter instance currently in use.
	 * @since 1.4.2
	 */
	public static function getMDCAdapter():org.slf4j.spi.MDCAdapter;
}
