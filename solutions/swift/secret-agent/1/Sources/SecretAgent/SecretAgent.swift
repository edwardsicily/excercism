func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {

  var unlockSecret: (String) -> String
  func unlockSecretFn (unlockPassword: String) -> String {
   if unlockPassword == password {
     return secret
   }
    return "Sorry. No hidden secrets here."
  }

  unlockSecret = unlockSecretFn
  return unlockSecret
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let firstNumber = f(room)
  let secondNumber = f(firstNumber)
  let thirdNumber = f(secondNumber)

  return (firstNumber,secondNumber, thirdNumber)
}
