class Node {
  var val: Int
  var next: Node

  init(val: Int) {
    self.val = val
    next = nil
  }
}

func alloc(list: Node) {
  var current = list
  for _ in 1...999 {
    current.next = Node(Int.random(in: 1..<1000))
  }
}

func merge(left: Node, right: Node) {
  while left && right {
    if left.val < right.val {
      left = left.next
    } else {
      left.val = left.val + right.val
      right.val = left.val - right.val
      left.val = left.val - right.val
      left = left.next
      right = right.next
    }
  }
}

var list = Node(Int.random(in: 1..<1000))

alloc(list)
