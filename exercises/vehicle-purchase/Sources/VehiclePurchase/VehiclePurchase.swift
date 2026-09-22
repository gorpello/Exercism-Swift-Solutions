func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    //The monthly payment is the cars total price divided by the number of months under the five year period.
    let monthlyPayment = price / (12 * 5)
    guard monthlyPayment > monthlyBudget else { return "Yes! I'm getting a \(vehicle)" }
    
    // If the monthly payment of the vehicle is above your monthly budget by up to 10% (inclusive), return the message "I'll have to be frugal if I want a <vehicle>"
    // If the monthly payment of the vehicle is more than 10% above your monthly budget, return the message "Darn! No <vehicle> for me".
    return monthlyPayment > (monthlyBudget + (monthlyBudget * 0.1)) ? "Darn! No \(vehicle) for me" : "I'll have to be frugal if I want a \(vehicle)" 

}

func licenseType(numberOfWheels wheels: Int) -> String {
    return switch wheels {
    case 2...3: "You will need a motorcycle license for your vehicle"
    case 4, 6: "You will need an automobile license for your vehicle"
    case 18: "You will need a commercial trucking license for your vehicle"
    default: "We do not issue licenses for those types of vehicles"
    }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
    // For a rough estimate, assume if the vehicle is less than 3 years old, it costs 80% of the original price it had when it was brand new. If it is at least 10 years old, it costs 50%. If the vehicle is at least 3 years old but not older than 10 years, it costs 70% of the original price.
    guard yearsOld < 10 else { return originalPrice / 2 }
    return yearsOld >= 3 ? (originalPrice * 70) / 100 : (originalPrice * 80) / 100
}
