class Node {
	var data: Int
	var next: Node?
	
	init(data: Int) {
		self.data = data
		self.next = nil
	}
}

func insert(head: Node!, data: Int!) -> Node {
    // Enter your code here. 
	let newNode = Node(data: data)
	if head == nil {
		return newNode
	}

	var ptr = head!
	while ptr.next != nil {
		ptr = ptr.next!
	}
	ptr.next = newNode
	
	return head
}

func display(head: Node!) {
	var current: Node! = head
	while current != nil {
		print(current.data, terminator: " ")
		current = current.next
	}
}

var head: Node! = nil
var n: Int = Int(readLine(strippingNewline: true)!)!

while n > 0 {
	let element = Int(readLine()!)
	head = insert(head: head, data: element)
	n = n - 1
}
display(head: head)

