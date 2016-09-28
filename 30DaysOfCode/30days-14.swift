
class Difference {
    private var elements = [Int]()
    var maximumDifference : Int!

	init(a: [Int]) {
		self.elements = a
	}

	func computeDifference() {
		var abs: Int
		for i in elements {
			for k in elements {
				abs = Swift.abs(i-k)
				if maximumDifference == nil || abs > maximumDifference {
					maximumDifference = abs
				}
			}
		}
	}

} // End of Difference class

let n = Int(readLine()!)!
let a = readLine()!.characters.split(separator: " ").map(String.init).map{Int($0)!}

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)

