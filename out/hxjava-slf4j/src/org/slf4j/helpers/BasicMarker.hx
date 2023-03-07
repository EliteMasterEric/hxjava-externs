package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.BasicMarker")
/**
 * A simple implementation of the {@link Marker} interface.
 * 
 * @author Ceki G&uuml;lc&uuml;
 * @author Joern Huxhorn
 */
extern class BasicMarker implements org.slf4j.Marker {
	public function add(reference:org.slf4j.Marker):Void;
	public function iterator():java.util.Iterator<org.slf4j.Marker>;

	/**  This method is mainly used with Expression Evaluators. */
	public overload function contains(name:String):Bool;

	public overload function contains(other:org.slf4j.Marker):Bool;
	public function getName():String;
	public function hasChildren():Bool;
	public function hashCode():Int;
	public function hasReferences():Bool;
	public function equals(obj:Dynamic):Bool;
	public function toString():String;
	public function remove(referenceToRemove:org.slf4j.Marker):Bool;
}
