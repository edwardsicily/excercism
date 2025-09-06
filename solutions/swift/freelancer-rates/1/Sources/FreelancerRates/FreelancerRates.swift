func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * 8
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
  let monthlyRate = dailyRate * 22
  let monthlyRateDiscounted = monthlyRate * (100.0 - discount) / 100.0
  return monthlyRateDiscounted.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
  let dailyRateDiscounted = dailyRate * (100.0 - discount) / 100.0
  let workDays =  budget / dailyRateDiscounted
  return workDays.rounded(.down)
}
