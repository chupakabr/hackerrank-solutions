struct Stack<T> {
	var data = [T]()

	mutating func push(_ val: T) -> Void {
		data.append(val)
	}

	mutating func pop() -> T {
		return data.removeLast()
	}
}

struct Queue<T> {
	var data = [T]()

	mutating func enqueue(_ val: T) -> Void {
		data.append(val)
	}

	mutating func dequeue() -> T {
		return data.removeFirst()
	}
}

class Solution {
  //Write your code here

	var stack = Stack<Character>()
	var queue = Queue<Character>()

	func pushCharacter(_ c: Character) -> Void {
		stack.push(c)
	}

	func popCharacter() -> Character {
		return stack.pop()
	}

	func enqueueCharacter(_ c: Character) -> Void {
		return queue.enqueue(c)
	}

	func dequeueCharacter() -> Character {
		return queue.dequeue()
	}
}

// read the string s.
let s = readLine()!

// create the Solution class object p.
let obj = Solution()

// push/enqueue all the characters of string s to stack.
for c in s.characters {
    obj.pushCharacter(c)
    obj.enqueueCharacter(c)
}

var isPalindrome = true

// pop the top character from stack.
// dequeue the first character from queue.
// compare both the characters.
for i in 0..<s.characters.count/2 {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false
        
        break
    }
}

// finally print whether string s is palindrome or not.
if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}

