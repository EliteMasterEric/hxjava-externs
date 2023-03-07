package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.ThreadLocalMapOfStacks")
/**
 * A simple implementation of ThreadLocal backed Map containing values of type 
 * Deque<String>.
 * 
 * @author Ceki Guuml;c&uuml;
 * @since 2.0.0
 */
extern class ThreadLocalMapOfStacks {
	public function new():Void;

	/**
	 * Clear the deque(stack) referenced by 'key'. 
	 * 
	 * @param key identifies the  stack
	 * 
	 * @since 2.0.0
	 */
	public function clearDequeByKey(key:String):Void;

	public function getCopyOfDequeByKey(key:String):java.util.Deque<String>;
	public function pushByKey(key:String, value:String):Void;
	public function popByKey(key:String):String;
}
