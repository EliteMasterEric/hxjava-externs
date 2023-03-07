package org.slf4j;

import java.StdTypes;

@:native("org.slf4j.MarkerFactory")
/**
 * MarkerFactory is a utility class producing {@link Marker} instances as
 * appropriate for the logging system currently in use.
 * 
 * <p>
 * This class is essentially implemented as a wrapper around an
 * {@link IMarkerFactory} instance bound at compile time.
 * 
 * <p>
 * Please note that all methods in this class are static.
 * 
 * @author Ceki G&uuml;lc&uuml;
 */
extern class MarkerFactory {
	/**
	 * Return a Marker instance as specified by the name parameter using the
	 * previously bound {@link IMarkerFactory}instance.
	 * 
	 * @param name
	 *          The name of the {@link Marker} object to return.
	 * @return marker
	 */
	public static function getMarker(name:String):org.slf4j.Marker;

	/**
	 * Return the {@link IMarkerFactory}instance in use.
	 * 
	 * <p>The IMarkerFactory instance is usually bound with this class at 
	 * compile time.
	 * 
	 * @return the IMarkerFactory instance in use
	 */
	public static function getIMarkerFactory():org.slf4j.IMarkerFactory;

	/**
	 * Create a marker which is detached (even at birth) from the MarkerFactory.
	 *
	 * @param name the name of the marker
	 * @return a dangling marker
	 * @since 1.5.1
	 */
	public static function getDetachedMarker(name:String):org.slf4j.Marker;
}
