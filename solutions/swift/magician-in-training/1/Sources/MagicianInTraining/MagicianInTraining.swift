func getCard(at index: Int, from stack: [Int]) -> Int {
  
   return stack[index];
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  if index < 0 || index > stack.count {
    return stack
  }
    var newStack: [Int] = stack
    newStack[index] = newCard
    return newStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
     var newStack = stack
     newStack.append(newCard)
     return newStack  
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  if stack.isEmpty || index > stack.count || index < 0 {
    return stack
  }
  var newStack = stack
  newStack.remove(at : index)
  return newStack
}

func removeTopCard(_ stack: [Int]) -> [Int] {
  if !stack.isEmpty {
    var newStack = stack
    newStack.remove(at : newStack.count - 1)
    return newStack
  }
  return stack
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
  var tempArray : [Int] = [newCard]
  return  tempArray + stack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
  return removeCard(at: 0, from : stack)
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
   return stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
  var count : Int = 0
  for card in stack {
    if card % 2 == 0 {
      count += 1
    }
  }
  return count 
}
