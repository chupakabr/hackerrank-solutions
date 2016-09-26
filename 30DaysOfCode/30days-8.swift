
var phonebook = [String: Int]()
let cnt = Int(readLine()!)!

for i in 1...cnt {
	let line = readLine()!
	let items = line.unicodeScalars.split(separator: " ")
	//print(items.first?.description!)
	phonebook[items.first!.description] = Int(items.last!.description)
}

var lookupName: String?
repeat {
	lookupName = readLine()
	if let lookupName = lookupName {
		if let foundEntry = phonebook[lookupName] {
	        print("\(lookupName)=\(foundEntry)")
	    } else {
	        print("Not found")
	  }
	}	
} while lookupName != nil

