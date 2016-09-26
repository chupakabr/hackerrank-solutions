
let dimensions = 6
let undefined = -999
var matrix = [[Int]]()

// Read input matrix
for row in 0...dimensions-1 {
	matrix.append(Array(repeating:0, count: dimensions))
	
	let line = readLine()!
	var col = 0
	for scalar in line.unicodeScalars.split(separator: " ") {
		matrix[row][col] = Int(scalar.description)!
		col += 1
	}
}

// Process the data
var max = undefined // better to set initial value as the result of the first calculation
for row in 0...dimensions-1-2 {
	for col in 0...dimensions-1-2 {
		// step-by-step as Swift compiler is not smart enough when he meets multiple overloaded methods in one statement
		var sum = 0
		sum += matrix[row][col] 
		sum += matrix[row][col+1] 
		sum += matrix[row][col+2] 
		sum += matrix[row+1][col+1] 
		sum += matrix[row+2][col] 
		sum += matrix[row+2][col+1] 
		sum += matrix[row+2][col+2]
		
		if sum > max {
			max = sum
		}
	}
}

print(max)

