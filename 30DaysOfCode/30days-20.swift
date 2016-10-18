// Enter your code here. Read input from STDIN. Print output to STDOUT

let total = Int(readLine()!)!
let numbers = readLine()!.characters.split(separator: " ").map(String.init).map{Int($0)!}

struct Sorter {
	func sort(_ numbers : [Int], resultsHandler : ([Int], Int) -> Void ) -> Void {
		var sorted = numbers
		var swapsNum: Int = 0
		var tmp: Int
		for _ in 0...numbers.count-1 {
			for j in 0...numbers.count-2 {
				if sorted[j] > sorted[j+1] {
					swapsNum += 1
					
					tmp = sorted[j]
					sorted[j] = sorted[j+1]
					sorted[j+1] = tmp
				}
			}
			
			if swapsNum == 0 {
				break
			}
		}
		
		resultsHandler(sorted, swapsNum)
	}
}

Sorter().sort(numbers) { sorted, swapsNum in
	print("Array is sorted in \(swapsNum) swaps.")
	print("First Element: \(sorted[0])")
	print("Last Element: \(sorted[sorted.count-1])")
}

