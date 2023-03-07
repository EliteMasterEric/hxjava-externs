package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.SubstituteLoggerFactory")
/**
 * SubstituteLoggerFactory manages instances of {@link SubstituteLogger}.
 *
 * @author Ceki G&uuml;lc&uuml;
 * @author Chetan Mehrotra
 */
extern class SubstituteLoggerFactory implements org.slf4j.ILoggerFactory {
	public function new():Void;
	public function getLoggerNames():java.util.List<String>;
	public function clear():Void;
	public function getLogger(name:String):org.slf4j.Logger;
	public function getEventQueue():java.util.concurrent.LinkedBlockingQueue<org.slf4j.event.SubstituteLoggingEvent>;
	public function postInitialization():Void;
	public function getLoggers():java.util.List<org.slf4j.helpers.SubstituteLogger>;
}
