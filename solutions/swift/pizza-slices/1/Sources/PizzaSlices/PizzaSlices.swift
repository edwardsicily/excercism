func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  guard let d = diameter,
    let slicesNumber = slices,
    d >= 0,
    slicesNumber > 0 else {return nil}

  let radius = d / 2.0

  return (radius * radius *  Double.pi) / Double(slicesNumber)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {

  let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
  let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))

  switch(areaA, areaB) {
    case let (areaA, areaB) where areaA == areaB : return "Neither slice is bigger"
    case (nil, _) : return "Slice B is bigger"
    case (_, nil): return "Slice A is bigger" 
    case let (areaA?, areaB?) : 
     return areaA > areaB ? "Slice A is bigger" : "Slice B is bigger"
    
  }
  
}
