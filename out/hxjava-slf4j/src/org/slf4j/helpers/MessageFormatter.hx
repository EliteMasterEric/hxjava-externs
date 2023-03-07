package org.slf4j.helpers;

import java.StdTypes;

@:native("org.slf4j.helpers.MessageFormatter")
@:final
/**
 * Formats messages according to very simple substitution rules. Substitutions
 * can be made 1, 2 or more arguments.
 *
 * <p>
 * For example,
 *
 * <pre>
 * MessageFormatter.format(&quot;Hi {}.&quot;, &quot;there&quot;)
 * </pre>
 *
 * will return the string "Hi there.".
 * <p>
 * The {} pair is called the <em>formatting anchor</em>. It serves to designate
 * the location where arguments need to be substituted within the message
 * pattern.
 * <p>
 * In case your message contains the '{' or the '}' character, you do not have
 * to do anything special unless the '}' character immediately follows '{'. For
 * example,
 *
 * <pre>
 * MessageFormatter.format(&quot;Set {1,2,3} is not equal to {}.&quot;, &quot;1,2&quot;);
 * </pre>
 *
 * will return the string "Set {1,2,3} is not equal to 1,2.".
 *
 * <p>
 * If for whatever reason you need to place the string "{}" in the message
 * without its <em>formatting anchor</em> meaning, then you need to escape the
 * '{' character with '\', that is the backslash character. Only the '{'
 * character should be escaped. There is no need to escape the '}' character.
 * For example,
 *
 * <pre>
 * MessageFormatter.format(&quot;Set \\{} is not equal to {}.&quot;, &quot;1,2&quot;);
 * </pre>
 *
 * will return the string "Set {} is not equal to 1,2.".
 *
 * <p>
 * The escaping behavior just described can be overridden by escaping the escape
 * character '\'. Calling
 *
 * <pre>
 * MessageFormatter.format(&quot;File name is C:\\\\{}.&quot;, &quot;file.zip&quot;);
 * </pre>
 *
 * will return the string "File name is C:\file.zip".
 *
 * <p>
 * The formatting conventions are different from those of {@link MessageFormat}
 * which ships with the Java platform. This is justified by the fact that
 * SLF4J's implementation is 10 times faster than that of {@link MessageFormat}.
 * This local performance difference is both measurable and significant in the
 * larger context of the complete logging processing chain.
 *
 * <p>
 * See also {@link #format(String, Object)},
 * {@link #format(String, Object, Object)} and
 * {@link #arrayFormat(String, Object[])} methods for more details.
 *
 * @author Ceki G&uuml;lc&uuml;
 * @author Joern Huxhorn
 */
extern class MessageFormatter {
	public function new():Void;

	/**
	 * Helper method to determine if an {@link Object} array contains a {@link Throwable} as last element
	 *
	 * @param argArray
	 *          The arguments off which we want to know if it contains a {@link Throwable} as last element
	 * @return if the last {@link Object} in argArray is a {@link Throwable} this method will return it,
	 *          otherwise it returns null
	 */
	public static function getThrowableCandidate(argArray:java.NativeArray<Dynamic>):java.lang.Throwable;

	public static overload function basicArrayFormat(np:org.slf4j.helpers.NormalizedParameters):String;

	/**
	 * Assumes that argArray only contains arguments with no throwable as last element.
	 * 
	 * @param messagePattern
	 * @param argArray
	 */
	public static overload function basicArrayFormat(messagePattern:String, argArray:java.NativeArray<Dynamic>):String;

	/**
	 * Helper method to get all but the last element of an array
	 *
	 * @param argArray
	 *          The arguments from which we want to remove the last element
	 *
	 * @return a copy of the array without the last element
	 */
	public static function trimmedCopy(argArray:java.NativeArray<Dynamic>):java.NativeArray<Dynamic>;

	/**
	 * Performs single argument substitution for the 'messagePattern' passed as
	 * parameter.
	 * <p>
	 * For example,
	 *
	 * <pre>
	 * MessageFormatter.format(&quot;Hi {}.&quot;, &quot;there&quot;);
	 * </pre>
	 *
	 * will return the string "Hi there.".
	 * <p>
	 *
	 * @param messagePattern
	 *          The message pattern which will be parsed and formatted
	 * @param arg
	 *          The argument to be substituted in place of the formatting anchor
	 * @return The formatted message
	 */
	public static overload function format(messagePattern:String, arg:Dynamic):org.slf4j.helpers.FormattingTuple;

	/**
	 *
	 * Performs a two argument substitution for the 'messagePattern' passed as
	 * parameter.
	 * <p>
	 * For example,
	 *
	 * <pre>
	 * MessageFormatter.format(&quot;Hi {}. My name is {}.&quot;, &quot;Alice&quot;, &quot;Bob&quot;);
	 * </pre>
	 *
	 * will return the string "Hi Alice. My name is Bob.".
	 *
	 * @param messagePattern
	 *          The message pattern which will be parsed and formatted
	 * @param arg1
	 *          The argument to be substituted in place of the first formatting
	 *          anchor
	 * @param arg2
	 *          The argument to be substituted in place of the second formatting
	 *          anchor
	 * @return The formatted message
	 */
	public static overload function format(messagePattern:String, arg1:Dynamic, arg2:Dynamic):org.slf4j.helpers.FormattingTuple;

	public static overload function arrayFormat(messagePattern:String, argArray:java.NativeArray<Dynamic>):org.slf4j.helpers.FormattingTuple;
	public static overload function arrayFormat(messagePattern:String, argArray:java.NativeArray<Dynamic>,
		throwable:java.lang.Throwable):org.slf4j.helpers.FormattingTuple;
}
