func timeToPrepare(drinks: [String]) -> Double {
    // "beer", "beer", and "water" take 0.5 minutes each.
    // "shot"s take 1.0 minutes, "mixed drink"s take 1.5 minutes,
    // "fancy drink"s take 2.5 minutes,
    // "frozen drink"s take 3.0 minutes.
    return drinks.reduce(0.0) { partialResult, drink in
        return switch drink {
        case "beer", "soda", "water":  partialResult + 0.5
        case "shot": partialResult + 1
        case "mixed drink": partialResult + 1.5
        case "fancy drink": partialResult + 2.5
        case "frozen drink": partialResult + 3.0
        default: partialResult
        }
    }
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    // 6 wedges from a "small" lime
    // 8 wedges from a "medium" lime
    // 10 from a "large" lime.
    var remainingNeeded = needed
    var limesCut = 0
    
    for lime in limes {
        guard remainingNeeded > 0 else { break }
        
        switch lime {
        case "small":
            remainingNeeded -= 6
        case "medium":
            remainingNeeded -= 8
        case "large":
            remainingNeeded -= 10
        default:
            break
        }
        
        limesCut += 1
    }
    
    return limesCut
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    
    var orders = remainingOrders
    var timeLeft: Double = Double(minutesLeft)
    
    while timeLeft > 0 && !orders.isEmpty {
        let currentOrder = orders.removeFirst()
        let prepTime = timeToPrepare(drinks: currentOrder)
        timeLeft -= prepTime
    }
    
    return orders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
    beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
    let beersOrder = orders.filter { $0.drink == "beer" }.sorted { $0.time < $1.time}
    let sodasOrder = orders.filter { $0.drink == "soda" }.sorted { $0.time < $1.time}
    
    let beers = beersOrder.isEmpty ? nil : (first: beersOrder.first?.time ?? "", last: beersOrder.last?.time ?? "", total: beersOrder.count)
    let sodas = sodasOrder.isEmpty ? nil : (first: sodasOrder.first?.time ?? "", last: sodasOrder.last?.time ?? "", total: sodasOrder.count)

    return (
        beer: beers, soda: sodas
    )
}
