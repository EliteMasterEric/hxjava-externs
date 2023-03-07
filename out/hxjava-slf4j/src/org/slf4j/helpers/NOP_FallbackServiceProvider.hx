package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.NOP_FallbackServiceProvider")
extern class NOP_FallbackServiceProvider implements org.slf4j.spi.SLF4JServiceProvider {
	/**
	 * Declare the version of the SLF4J API this implementation is compiled
	 * against. The value of this field is modified with each major release.
	 */
	static public var REQUESTED_API_VERSION:String;

	public function new():Void;
	public function getLoggerFactory():org.slf4j.ILoggerFactory;
	public function getMarkerFactory():org.slf4j.IMarkerFactory;
	public function getRequestedApiVersion():String;
	public function initialize():Void;
	public function getMDCAdapter():org.slf4j.spi.MDCAdapter;
}
