package org.slf4j.spi;

import java.StdTypes;

@:native("org.slf4j.spi.LoggerFactoryBinder")
/**
 * An internal interface which helps the static {@link org.slf4j.LoggerFactory} 
 * class bind with the appropriate {@link ILoggerFactory} instance. 
 * 
 * @author Ceki G&uuml;lc&uuml;
 * @deprecated
 */
extern interface LoggerFactoryBinder {
	/**
	 * Return the instance of {@link ILoggerFactory} that 
	 * {@link org.slf4j.LoggerFactory} class should bind to.
	 * 
	 * @return the instance of {@link ILoggerFactory} that 
	 * {@link org.slf4j.LoggerFactory} class should bind to.
	 */
	public function getLoggerFactory():org.slf4j.ILoggerFactory;

	/**
	 * The String form of the {@link ILoggerFactory} object that this 
	 * <code>LoggerFactoryBinder</code> instance is <em>intended</em> to return. 
	 * 
	 * <p>This method allows the developer to interrogate this binder's intention
	 * which may be different from the {@link ILoggerFactory} instance it is able to 
	 * yield in practice. The discrepancy should only occur in case of errors.
	 * 
	 * @return the class name of the intended {@link ILoggerFactory} instance
	 */
	public function getLoggerFactoryClassStr():String;
}
