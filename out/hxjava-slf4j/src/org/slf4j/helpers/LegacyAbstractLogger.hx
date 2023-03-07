package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.LegacyAbstractLogger")
/**
 * Provides minimal default implementations for {@link #isTraceEnabled(Marker)}, {@link #isDebugEnabled(Marker)} and other similar methods.
 * 
 * @since 2.0
 */
extern class LegacyAbstractLogger extends org.slf4j.helpers.AbstractLogger {
	public function new():Void;
	public function isInfoEnabled(marker:org.slf4j.Marker):Bool;
	public function isErrorEnabled(marker:org.slf4j.Marker):Bool;
	public function isTraceEnabled(marker:org.slf4j.Marker):Bool;
	public function isDebugEnabled(marker:org.slf4j.Marker):Bool;
	public function isWarnEnabled(marker:org.slf4j.Marker):Bool;
}
