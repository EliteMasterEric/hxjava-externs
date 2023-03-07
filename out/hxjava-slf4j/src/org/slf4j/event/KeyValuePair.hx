package org.slf4j.event;

import java.StdTypes;

@:native("org.slf4j.event.KeyValuePair")
extern class KeyValuePair {
	public var key:String;
	public var value:Dynamic;
	public function new(key:String, value:Dynamic):Void;
	public function toString():String;
}
