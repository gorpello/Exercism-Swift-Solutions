func dailyRateFrom(hourlyRate: Int) -> Double {
    Double(hourlyRate * 8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let monthlyRate = dailyRateFrom(hourlyRate: hourlyRate) * 22
    return (monthlyRate * (1 - discount / 100)).rounded(.down)
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let discountedDailyRate = dailyRateFrom(hourlyRate: hourlyRate) * (1 - discount / 100)
    return (budget / discountedDailyRate).rounded(.down)
}
