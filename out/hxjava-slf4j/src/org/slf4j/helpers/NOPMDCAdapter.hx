package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.NOPMDCAdapter")
/**
 * This adapter is an empty implementation of the {@link MDCAdapter} interface.
 * It is used for all logging systems which do not support mapped
 * diagnostic contexts such as JDK14, simple and NOP. 
 * 
 * @author Ceki G&uuml;lc&uuml;
 * 
 * @since 1.4.1
 */
extern class NOPMDCAdapter implements org.slf4j.spi.MDCAdapter {
	public function new():Void;
	public function getCopyOfContextMap():java.util.Map<String, String>;
	public function clearDequeByKey(key:String):Void;
	public function getCopyOfDequeByKey(key:String):java.util.Deque<String>;
	public function pushByKey(key:String, value:String):Void;
	public function get(key:String):String;
	public function popByKey(key:String):String;
	public function clear():Void;
	public function setContextMap(contextMap:java.util.Map<String, String>):Void;
	public function put(key:String, val:String):Void;
	public function remove(key:String):Void;
}
