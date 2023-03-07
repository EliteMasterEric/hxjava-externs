package org.slf4j;

import java.StdTypes;

@:native("org.slf4j.Marker")
/**
 * Markers are named objects used to enrich log statements. Conforming logging
 * system implementations of SLF4J should determine how information conveyed by
 * any markers are used, if at all. Many conforming logging systems ignore marker
 * data entirely.
 *
 * <p>Markers can contain references to nested markers, which in turn may
 * contain references of their own. Note that the fluent API (new in 2.0) allows adding
 * multiple markers to a logging statement. It is often preferable to use
 * multiple markers instead of nested markers.
 * </p>
 *
 * @author Ceki G&uuml;lc&uuml;
 */
extern interface Marker {
	/**
	 * Add a reference to another Marker.
	 *
	 * <p>Note that the fluent API allows adding multiple markers to a logging statement.
	 * It is often preferable to use multiple markers instead of nested markers.
	 * </p>
	 *
	 * @param reference
	 *                a reference to another marker
	 * @throws IllegalArgumentException
	 *                 if 'reference' is null
	 */
	public function add(reference:org.slf4j.Marker):Void;

	/**
	 * Returns an Iterator which can be used to iterate over the references of this
	 * marker. An empty iterator is returned when this marker has no references.
	 * 
	 * @return Iterator over the references of this marker
	 */
	public function iterator():java.util.Iterator<org.slf4j.Marker>;

	/**
	 * Does this marker contain the marker named 'name'?
	 * 
	 * If 'name' is null the returned value is always false.
	 * 
	 * @param name The marker name to test for inclusion.
	 * @return Whether this marker contains the other marker.
	 */
	public overload function contains(name:String):Bool;

	/**
	 * Does this marker contain a reference to the 'other' marker? Marker A is defined 
	 * to contain marker B, if A == B or if B is referenced by A, or if B is referenced
	 * by any one of A's references (recursively).
	 * 
	 * @param other
	 *                The marker to test for inclusion.
	 * @throws IllegalArgumentException
	 *                 if 'other' is null
	 * @return Whether this marker contains the other marker.
	 */
	public overload function contains(other:org.slf4j.Marker):Bool;

	/**
	 * Get the name of this Marker.
	 * 
	 * @return name of marker
	 */
	public function getName():String;

	/**  @deprecated Replaced by {@link #hasReferences()}. */
	public function hasChildren():Bool;

	/**
	 * Compute the hash code based on the name of this marker.
	 * Note that markers are considered equal if they have the same name.
	 * 
	 * @return the computed hashCode
	 * @since 1.5.1
	 */
	public function hashCode():Int;

	/**
	 * Does this marker have any references?
	 * 
	 * @return true if this marker has one or more references, false otherwise.
	 */
	public function hasReferences():Bool;

	/**
	 * Markers are considered equal if they have the same name.
	 *
	 * @param o
	 * @return true, if this.name equals o.name
	 *
	 * @since 1.5.1
	 */
	public function equals(o:Dynamic):Bool;

	/**
	 * Remove a marker reference.
	 * 
	 * @param reference
	 *                the marker reference to remove
	 * @return true if reference could be found and removed, false otherwise.
	 */
	public function remove(reference:org.slf4j.Marker):Bool;
}
