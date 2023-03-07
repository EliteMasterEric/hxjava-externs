package org.slf4j.event;

import java.StdTypes;

@:native("org.slf4j.event.EventConstants")
extern class EventConstants {
	inline static public var ERROR_INT:Int = 40;
	inline static public var WARN_INT:Int = 30;
	inline static public var INFO_INT:Int = 20;
	inline static public var DEBUG_INT:Int = 10;
	inline static public var TRACE_INT:Int = 0;
	inline static public var NA_SUBST:String = "NA/SubstituteLogger";
	public function new():Void;
}
