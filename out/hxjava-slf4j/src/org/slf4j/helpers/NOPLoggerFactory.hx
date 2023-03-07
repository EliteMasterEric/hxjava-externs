package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.NOPLoggerFactory")
/**
 * NOPLoggerFactory is a trivial implementation of {@link
 * ILoggerFactory} which always returns the unique instance of
 * NOPLogger.
 * 
 * @author Ceki G&uuml;lc&uuml;
 */
extern class NOPLoggerFactory implements org.slf4j.ILoggerFactory {
	public function new():Void;
	public function getLogger(name:String):org.slf4j.Logger;
}
