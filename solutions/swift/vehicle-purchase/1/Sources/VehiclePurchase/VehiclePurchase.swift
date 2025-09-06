func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let years = 5.0 
  let monthlyRate: Double = price / (years * 12.0)

  func frugalMonthlyBudget(monthlyBudget: Double) -> Double {
    return monthlyBudget * 1.1
  }
  
  if monthlyRate <= monthlyBudget {
    return "Yes! I'm getting a " + "\(vehicle)"
  }else if  monthlyRate <= frugalMonthlyBudget(monthlyBudget: monthlyBudget) {
    return "I'll have to be frugal if I want a " + "\(vehicle)"
  }
  return "Darn! No " + "\(vehicle) " + "for me"
}

func licenseType(numberOfWheels wheels: Int) -> String {
  if wheels == 2 || wheels == 3 {
    return "You will need a motorcycle license for your vehicle"
  }

  if wheels == 4 || wheels == 6 {
    return "You will need an automobile license for your vehicle"
  }

  if wheels == 18 {
    return "You will need a commercial trucking license for your vehicle"
  }

  return "We do not issue licenses for those types of vehicles"
  
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  
  if(yearsOld < 3){
    return  originalPrice * 8 / 10
  }

  if(yearsOld < 10  ){
    return  originalPrice * 7 / 10
  }

  return  originalPrice * 5 / 10
}
