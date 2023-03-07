package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.SubstituteServiceProvider")
extern class SubstituteServiceProvider implements org.slf4j.spi.SLF4JServiceProvider {
	public function new():Void;
	public function getSubstituteLoggerFactory():org.slf4j.helpers.SubstituteLoggerFactory;
	public function getLoggerFactory():org.slf4j.ILoggerFactory;
	public function getMarkerFactory():org.slf4j.IMarkerFactory;
	public function getRequestedApiVersion():String;
	public function initialize():Void;
	public function getMDCAdapter():org.slf4j.spi.MDCAdapter;
}
