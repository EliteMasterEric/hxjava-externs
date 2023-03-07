package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.BasicMDCAdapter")
/**
 * Basic MDC implementation, which can be used with logging systems that lack
 * out-of-the-box MDC support.
 *
 * This code was initially inspired by  logback's LogbackMDCAdapter. However,
 * LogbackMDCAdapter has evolved and is now considerably more sophisticated.
 *
 * @author Ceki Gulcu
 * @author Maarten Bosteels
 * @author Lukasz Cwik
 * 
 * @since 1.5.0
 */
extern class BasicMDCAdapter implements org.slf4j.spi.MDCAdapter {
	public function new():Void;

	/**
	 * Return a copy of the current thread's context map.
	 * Returned value may be null.
	 */
	public function getCopyOfContextMap():java.util.Map<String, String>;

	public function clearDequeByKey(key:String):Void;
	public function getCopyOfDequeByKey(key:String):java.util.Deque<String>;
	public function pushByKey(key:String, value:String):Void;

	/**  Get the context identified by the <code>key</code> parameter. */
	public function get(key:String):String;

	public function popByKey(key:String):String;

	/**  Clear all entries in the MDC. */
	public function clear():Void;

	public function setContextMap(contextMap:java.util.Map<String, String>):Void;

	/**
	 * Returns the keys in the MDC as a {@link Set} of {@link String}s The
	 * returned value can be null.
	 *
	 * @return the keys in the MDC
	 */
	public function getKeys():java.util.Set<String>;

	/**
	 * Put a context value (the <code>val</code> parameter) as identified with
	 * the <code>key</code> parameter into the current thread's context map.
	 * Note that contrary to log4j, the <code>val</code> parameter can be null.
	 *
	 * <p>
	 * If the current thread does not have a context map it is created as a side
	 * effect of this call.
	 *
	 * @throws IllegalArgumentException
	 *                 in case the "key" parameter is null
	 */
	public function put(key:String, val:String):Void;

	/**  Remove the context identified by the <code>key</code> parameter. */
	public function remove(key:String):Void;
}
