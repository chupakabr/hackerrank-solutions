// Class Person
class Person {
    var firstName: String
    var lastName: String
    var id: Int
    
    // Initializer
    init(firstName: String, lastName: String, identification: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = identification
    }
    
    // Print person data
    func printPerson() {
        print("Name: \(self.lastName), \(self.firstName)")
        print("ID: \(self.id)")
    }
} // End of class Person


// Class Student
class Student: Person {
    var testScores: [Int]
    
    // Write the Student class initializer
    init(firstName: String, lastName: String, identification: Int, scores: [Int]) {
		self.testScores = scores	
		super.init(firstName: firstName, lastName: lastName, identification: identification)
	}
    
    // Write the calculate method
	func calculate() -> Character {
		var total = 0
		for score in testScores {
			total += score
		}
		let avg = testScores.count > 0 ? total/testScores.count : 0

		switch avg {
			case 90..<101:
				return "O"
			case 80..<90:
				return "E"
			case 70..<80:
				return "A"
			case 55..<70:
				return "P"
			case 40..<55:
				return "D"
			default:
				return "T"
		}
	}   
    
} // End of class Student


let nameAndID = readLine()!.characters.split(separator: " ").map{String($0)}
let scoreCount = readLine()
let scores = readLine()!.characters.split(separator: " ").map{Int(String($0))!}

let s = Student(firstName: nameAndID[0], lastName: nameAndID[1], identification: Int(nameAndID[2])!, scores: scores)

s.printPerson()

print("Grade: \(s.calculate())")

