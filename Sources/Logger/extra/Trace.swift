import Foundation

public class Trace {
   /**
    * To make it work you must set the "DEBUG" symbol, set it in the "Swift Compiler - Custom Flags" section, "Other Swift Flags" line.
    * - Remark: You add the DEBUG symbol with the -D DEBUG entry.
    * - Remark: From here: https://stackoverflow.com/questions/41974883/how-to-print-out-the-method-name-and-line-number-in-swift
    * - Remark: there is also: columnNumber: Int = #column -> The column number in which it begins.
    * ## Example:
    * func myFunction() {
    *    Trace.trace("This msg") // Prints "This msg is called from function: myFunction in class: Test on line: 13"
    * }
    * - Parameters:
    *   - message: custom msg
    *   - file: The name of the file in which it appears.
    *   - function: The name of the declaration in which it appears.
    *   - line: The line number on which it appears.
    */
   public static func trace(_ message: String, file: String = #file, function: String = #function, line: Int = #line ) -> String {
		let className = (file as NSString).lastPathComponent // file name isnt imp
	   return "\(message) is called from function: \(function) in class: \(className) on line: \(line)"
	}
}
