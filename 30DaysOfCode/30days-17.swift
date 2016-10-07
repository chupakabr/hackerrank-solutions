import Darwin

// Defining enum for throwing error
// throw RangeError.NotInRange... is used to throw the error
enum RangeError : Error {
    case NotInRange(String)
}

// Start of class Calculator
class Calculator {
    // Start of function power
    func power(n: Int, p: Int) throws -> Int {
		// Add your code here
		if n < 0 || p < 0 {
			throw RangeError.NotInRange("n and p should be non-negative")
		}

		var res = 1
		for _ in 0..<p {
			res *= n
		}
		
		return res
	} // End of function power
} // End of class Calculator

let myCalculator = Calculator()
var t = Int(readLine()!)!

while (t > 0) {
	t -= 1
    let np = readLine()!.characters.split(separator: " ").map(String.init)
    
    do {
        let ans = try myCalculator.power(n: Int(np[0])!, p: Int(np[1])!)
        print(ans)
    } catch RangeError.NotInRange(let errorMsg) {
        print(errorMsg)
    }
}

