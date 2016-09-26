
func printnnl(str: Any) -> Void {
	print(str, terminator: "")
}

func buildStrings(str: String) -> (String, String) {
	var str1 = ""
	var str2 = ""
	var latch = true
	for char in str.characters {
		if latch {
			str1.append(char)
		} else {
			str2.append(char)
		}
		latch = !latch
	}
	return (str1, str2)
}

func genInput(num: Int) -> String {
	var str = ""
	let char: Character = "X"
	for _ in 1...num {
		str.append(char)
	}
	return str
}

let t = Int(readLine()!)!
//let t = 1
var str: String
for i in 1...t {
	str = readLine()!
	//str = genInput(9876)
	var (str1, str2) = buildStrings(str)
	print("\(str1) \(str2)")
}

