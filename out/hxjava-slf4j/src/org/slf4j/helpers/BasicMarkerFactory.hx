package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.BasicMarkerFactory")
/**
 * An almost trivial implementation of the {@link IMarkerFactory}
 * interface which creates {@link BasicMarker} instances.
 * 
 * <p>Simple logging systems can conform to the SLF4J API by binding
 * {@link org.slf4j.MarkerFactory} with an instance of this class.
 *
 * @author Ceki G&uuml;lc&uuml;
 */
extern class BasicMarkerFactory implements org.slf4j.IMarkerFactory {
	/**
	 * Regular users should <em>not</em> create
	 * <code>BasicMarkerFactory</code> instances. <code>Marker</code>
	 * instances can be obtained using the static {@link
	 * org.slf4j.MarkerFactory#getMarker} method.
	 */
	public function new():Void;

	/**
	 * Manufacture a {@link BasicMarker} instance by name. If the instance has been 
	 * created earlier, return the previously created instance. 
	 * 
	 * @param name the name of the marker to be created
	 * @return a Marker instance
	 */
	public function getMarker(name:String):org.slf4j.Marker;

	/**  Does the name marked already exist? */
	public function exists(name:String):Bool;

	public function detachMarker(name:String):Bool;
	public function getDetachedMarker(name:String):org.slf4j.Marker;
}
