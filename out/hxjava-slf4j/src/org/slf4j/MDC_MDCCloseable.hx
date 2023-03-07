package org.slf4j;

import java.StdTypes;

@:native("org.slf4j.MDC.MDCCloseable")
/**  An adapter to remove the key when done. */
extern class MDC_MDCCloseable implements java.io.Closeable {
	public function close():Void;
}
