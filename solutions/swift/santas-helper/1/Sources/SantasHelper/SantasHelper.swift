import Foundation

func cartesianToPolar(_ cart: (x: Double, y: Double)) -> (r: Double, phi: Double) {
  
  let radius = sqrt(pow(cart.x, 2.0) + pow(cart.y, 2.0))
  let angle = atan2(cart.y,cart.x)
  return (r: radius, phi: angle)
}

func combineRecords(
  production: (toy: String, id: Int, productLead: String),
  gifts: (Int, [String])
) -> (id: Int, toy: String, productLead: String, recipients: [String]) {
  return (id: production.id, toy: production.toy , production.productLead , recipients: gifts.1)
}
