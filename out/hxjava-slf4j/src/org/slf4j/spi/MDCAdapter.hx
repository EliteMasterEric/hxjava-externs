package org.slf4j.spi;

import java.StdTypes;

@:native("org.slf4j.spi.MDCAdapter")
/**
 * This interface abstracts the service offered by various MDC
 * implementations.
 * 
 * @author Ceki G&uuml;lc&uuml;
 * @since 1.4.1
 */
extern interface MDCAdapter {
	/**
	 * Return a copy of the current thread's context map, with keys and 
	 * values of type String. Returned value may be null.
	 * 
	 * @return A copy of the current thread's context map. May be null.
	 * @since 1.5.1
	 */
	public function getCopyOfContextMap():java.util.Map<String, String>;

	/**
	 * Clear the deque(stack) referenced by 'key'. 
	 * 
	 * @param key identifies the  stack
	 * 
	 * @since 2.0.0
	 */
	public function clearDequeByKey(key:String):Void;

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
	public function pushByKey(key:String, value:String):Void;

	/**
	 * Get the context identified by the <code>key</code> parameter.
	 * The <code>key</code> parameter cannot be null.
	 * 
	 * @return the string value identified by the <code>key</code> parameter.
	 */
	public function get(key:String):String;

	/**
	 * Pop the stack referenced by 'key' and return the value possibly null.
	 * 
	 * @param key identifies the deque(stack)
	 * @return the value just popped. May be null/
	 * @since 2.0.0
	 */
	public function popByKey(key:String):String;

	/**  Clear all entries in the MDC. */
	public function clear():Void;

	/**
	 * Set the current thread's context map by first clearing any existing 
	 * map and then copying the map passed as parameter. The context map 
	 * parameter must only contain keys and values of type String.
	 * 
	 * Implementations must support null valued map passed as parameter.
	 * 
	 * @param contextMap must contain only keys and values of type String
	 * 
	 * @since 1.5.1
	 */
	public function setContextMap(contextMap:java.util.Map<String, String>):Void;

	/**
	 * Put a context value (the <code>val</code> parameter) as identified with
	 * the <code>key</code> parameter into the current thread's context map. 
	 * The <code>key</code> parameter cannot be null. The <code>val</code> parameter
	 * can be null only if the underlying implementation supports it.
	 * 
	 * <p>If the current thread does not have a context map it is created as a side
	 * effect of this call.
	 */
	public function put(key:String, val:String):Void;

	/**
	 * Remove the context identified by the <code>key</code> parameter.
	 * The <code>key</code> parameter cannot be null. 
	 * 
	 * <p>
	 * This method does nothing if there is no previous value 
	 * associated with <code>key</code>.
	 */
	public function remove(key:String):Void;
}
