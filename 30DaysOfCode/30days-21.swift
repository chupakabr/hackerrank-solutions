// Start of struct Printer
struct Printer<type> {

	func printArray<T>(_ array: [T]) {
		for e in array {
			print(e)
		}
	}

} // End of struct Printer

let vInt = [1, 2, 3]
let vString = ["Hello", "World"]

Printer<Int>().printArray(vInt)
Printer<String>().printArray(vString)

