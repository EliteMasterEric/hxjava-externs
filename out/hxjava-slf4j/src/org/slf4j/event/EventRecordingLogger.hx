package org.slf4j.event;

import java.StdTypes;

@:native("org.slf4j.event.EventRecordingLogger")
/**
 * 
 * This class is used to record events during the initialization phase of the
 * underlying logging framework. It is called by {@link SubstituteLogger}.
 * 
 * 
 * @author Ceki G&uuml;lc&uuml;
 * @author Wessel van Norel
 */
extern class EventRecordingLogger extends org.slf4j.helpers.LegacyAbstractLogger {
	public function new(logger:org.slf4j.helpers.SubstituteLogger, eventQueue:java.util.Queue<org.slf4j.event.SubstituteLoggingEvent>):Void;
	public function getName():String;
	public function isInfoEnabled():Bool;
	public function isErrorEnabled():Bool;
	public function isTraceEnabled():Bool;
	public function isDebugEnabled():Bool;
	public function isWarnEnabled():Bool;
	private function getFullyQualifiedCallerName():String;
	private function handleNormalizedLoggingCall(level:org.slf4j.event.Level, marker:org.slf4j.Marker, msg:String, args:java.NativeArray<Dynamic>,
		throwable:java.lang.Throwable):Void;
}
