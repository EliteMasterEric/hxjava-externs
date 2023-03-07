package org.slf4j.spi;

import java.StdTypes;

@:native("org.slf4j.spi.CallerBoundaryAware")
/**
 * Additional interface to {@link LoggingEventBuilder} and 
 * {@link org.slf4j.event.LoggingEvent LoggingEvent}.
 * 
 * Implementations of {@link LoggingEventBuilder} and  {@link LoggingEvent} may optionally
 * implement {@link CallerBoundaryAware} in order to support caller info extraction.
 *
 * This interface is intended for use by logging backends or logging bridges. 
 * 
 * @author Ceki Gulcu
 */
extern interface CallerBoundaryAware {
	/**
	 * Add a fqcn (fully qualified class name) to this event, presumed to be the caller boundary.
	 * 
	 * @param fqcn
	 */
	public function setCallerBoundary(fqcn:String):Void;
}
