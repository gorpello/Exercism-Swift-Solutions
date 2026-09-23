func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let diameter, let slices, diameter >= 0, slices >= 1 else { return nil }
    let radius = diameter / 2
    let areaPizza = .pi * radius * radius
    return areaPizza / Double(slices)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
    let pizzaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let pizzaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
    
    return switch (pizzaA, pizzaB) {
    case (.none, .none): "Neither slice is bigger"
    case (.some(_), .none): "Slice A is bigger"
    case (.none, .some(_)): "Slice B is bigger"
    case let (.some(areaPizzaA), .some(areaPizzaB)):
        areaPizzaA == areaPizzaB ? "Neither slice is bigger" :
        areaPizzaA > areaPizzaB ? "Slice A is bigger" : "Slice B is bigger"
    }
}
