package org.slf4j;

import java.StdTypes;

@:native("org.slf4j.LoggerFactory")
@:final
/**
 * The <code>LoggerFactory</code> is a utility class producing Loggers for
 * various logging APIs, most notably for log4j, logback and JDK 1.4 logging.
 * Other implementations such as {@link org.slf4j.helpers.NOPLogger NOPLogger} and
 * SimpleLogger are also supported.
 * 
 * <p><code>LoggerFactory</code> is essentially a wrapper around an
 * {@link ILoggerFactory} instance bound with <code>LoggerFactory</code> at
 * compile time.
 * 
 * <p>
 * Please note that all methods in <code>LoggerFactory</code> are static.
 * 
 * @author Alexander Dorokhine
 * @author Robert Elliot
 * @author Ceki G&uuml;lc&uuml;
 * 
 */
extern class LoggerFactory {
	/**
	 * Return the {@link ILoggerFactory} instance in use.
	 * <p>
	 * <p>
	 * ILoggerFactory instance is bound with this class at compile time.
	 * 
	 * @return the ILoggerFactory instance in use
	 */
	public static function getILoggerFactory():org.slf4j.ILoggerFactory;

	/**
	 * Return a logger named according to the name parameter using the
	 * statically bound {@link ILoggerFactory} instance.
	 * 
	 * @param name
	 *            The name of the logger.
	 * @return logger
	 */
	public static overload function getLogger(name:String):org.slf4j.Logger;

	/**
	 * Return a logger named corresponding to the class passed as parameter,
	 * using the statically bound {@link ILoggerFactory} instance.
	 * 
	 * <p>
	 * In case the <code>clazz</code> parameter differs from the name of the
	 * caller as computed internally by SLF4J, a logger name mismatch warning
	 * will be printed but only if the
	 * <code>slf4j.detectLoggerNameMismatch</code> system property is set to
	 * true. By default, this property is not set and no warnings will be
	 * printed even in case of a logger name mismatch.
	 * 
	 * @param clazz
	 *            the returned logger will be named after clazz
	 * @return logger
	 * 
	 * 
	 * @see <a
	 *      href="http://www.slf4j.org/codes.html#loggerNameMismatch">Detected
	 *      logger name mismatch</a>
	 */
	public static overload function getLogger(clazz:java.lang.Class<Dynamic>):org.slf4j.Logger;
}
