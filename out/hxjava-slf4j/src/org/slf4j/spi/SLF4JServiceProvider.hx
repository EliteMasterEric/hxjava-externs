package org.slf4j.spi;

import java.StdTypes;

@:native("org.slf4j.spi.SLF4JServiceProvider")
/**
 * This interface based on {@link java.util.ServiceLoader} paradigm. 
 * 
 * <p>It replaces the old static-binding mechanism used in SLF4J versions 1.0.x to 1.7.x.
 *
 * @author Ceki G&uml;lc&uml;
 * @since 1.8
 */
extern interface SLF4JServiceProvider {
	/**
	 * Return the instance of {@link ILoggerFactory} that 
	 * {@link org.slf4j.LoggerFactory} class should bind to.
	 * 
	 * @return instance of {@link ILoggerFactory} 
	 */
	public function getLoggerFactory():org.slf4j.ILoggerFactory;

	/**
	 * Return the instance of {@link IMarkerFactory} that 
	 * {@link org.slf4j.MarkerFactory} class should bind to.
	 * 
	 * @return instance of {@link IMarkerFactory} 
	 */
	public function getMarkerFactory():org.slf4j.IMarkerFactory;

	/**
	 * Return the maximum API version for SLF4J that the logging
	 * implementation supports.
	 *
	 * <p>For example: {@code "2.0.1"}.
	 *
	 * @return the string API version.
	 */
	public function getRequestedApiVersion():String;

	/**
	 * Initialize the logging back-end.
	 * 
	 * <p><b>WARNING:</b> This method is intended to be called once by 
	 * {@link LoggerFactory} class and from nowhere else. 
	 * 
	 */
	public function initialize():Void;

	/**
	 * Return the instance of {@link MDCAdapter} that
	 * {@link MDC} should bind to.
	 * 
	 * @return instance of {@link MDCAdapter} 
	 */
	public function getMDCAdapter():org.slf4j.spi.MDCAdapter;
}
