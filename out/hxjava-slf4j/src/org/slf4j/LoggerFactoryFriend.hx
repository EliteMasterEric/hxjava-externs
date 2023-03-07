package org.slf4j;

import java.StdTypes;

@:native("org.slf4j.LoggerFactoryFriend")
/**
 * All methods in this class are reserved for internal use, for testing purposes.
 * 
 * <p>They can be modified, renamed or removed at any time without notice.
 * 
 * <p>You are strongly discouraged calling any of the methods of this class.
 *
 * @since 1.8.0
 *
 *  @author Ceki G&uuml;lc&uuml;
 */
extern class LoggerFactoryFriend {
	public function new():Void;

	/**
	 * Set LoggerFactory.DETECT_LOGGER_NAME_MISMATCH variable.
	 * 
	 * @param enabled a boolean
	 */
	public static function setDetectLoggerNameMismatch(enabled:Bool):Void;

	public static function reset():Void;
}
