// Playground - Structures

import UIKit


// A Swift class
class SwiftClass {
	var storedProperty: String = "Remember me?"
	let someFixedNumber = 9
	var computedProperty: String {
		get {
			return storedProperty.lowercaseString
		}
		set {
			storedProperty = newValue
		}
	}
	
	class func classMethod() {
	}
	
	func instanceMethod() {
	}
	
	init(what: String) {
		// initializer
		storedProperty = what
	}
}

// A Swift struct
struct SwiftStruct {
	var storedProperty: String = "Remember me?"
	let someFixedNumber = 9
	var computedProperty: String {
		get {
			return storedProperty.lowercaseString
		}
		set {
			storedProperty = newValue
		}
	}
	
	static func globalMethod() {
	}
	
	func instanceMethod() {
	}
	
	init(what: String) {
		// initializer
		storedProperty = what
	}
}


// Initializing a struct

struct StructWithDefaults {
	var number: Int = 1
	var name: String = "james"
	// A struct with stored properties that all have default
	//	values gets two automatic initializers. A default
	//	initializer (just like a class) and a memberwise initializer.
	
	// init()                          <- generated by Swift
	// init(number: Int, name: String) <- generated by Swift
}

let struct1 = StructWithDefaults()
let srruct2 = StructWithDefaults(number: 3, name: "john")


struct StructWithoutDefaults {
	var number: Int
	var name: String
	// A struct with any stored properties that lack a default
	//	value does not automatically get a default initializer,
	//	but it still gets a memberwise initializesr.

	// init(number: Int, name: String) <- generated by Swift
}

//let struct3 = StructWithoutDefaults()	<- no such initializer
let struct4 = StructWithoutDefaults(number: 4, name: "fred")


// A struct that declares its own initializer does not get
//	an automatic default initializer or memberwise initializer.
let struct5 = SwiftStruct(what: "up?")	// custom initializer
//let struct6 = SwiftStruct(storedProperty: "down", someFixedNumber: 1) <- invalid
//let struct7 = SwiftStruct() <- invalid


