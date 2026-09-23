func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
    birdsPerDay.reduce(0, +)
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
    // week 1 -> 0...6 (x-1)*7 ... (x-1)*7+6
    // week 2 -> 7...13
    let currentWeekIndex = (weekNumber-1)*7
    return birdsPerDay[currentWeekIndex...currentWeekIndex+6]
        .reduce(0, +)
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
    birdsPerDay.enumerated().map { $0 % 2 == 0 ? $1+1 : $1 }
}
