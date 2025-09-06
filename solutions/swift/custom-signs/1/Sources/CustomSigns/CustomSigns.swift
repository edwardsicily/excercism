// TODO: define the 'birthday' String constant

let birthday = "Birthday"

// TODO: define the 'valentine' String constant

let valentine = "Valentine's Day"

// TODO: define the 'anniversary' String constant

let anniversary = "Anniversary"

// TODO: define the 'space' Character constant

let space : Character = " "

// TODO: define the 'exclamation' Character constant

let exclamation: Character = "!"

func buildSign(for occasion: String, name: String) -> String {
 return "Happy" + "\(space)" + "\(occasion)" + "\(space)" + "\(name)" + "\(exclamation)"
}

func graduationFor(name: String, year: Int) -> String {
  return "Congratulations" + "\(space)" + "\(name)" + "\(exclamation)" + "\n" +  "Class of" + "\(space)" + "\(year)"
}

func costOf(sign: String) -> Int {
  var initialCost = 20
  let additionalCost : Int = sign.count * 2
  return initialCost + additionalCost
}
