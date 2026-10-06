class Year {
    // Write your code for the 'Leap' exercise in this file.
    
    let calendarYear: Int
    
    init(calendarYear: Int) {
        self.calendarYear = calendarYear
    }
    
    var isLeapYear: Bool {
        if calendarYear.isMultiple(of: 400) { return true }
        if calendarYear.isMultiple(of: 100) { return false }
        if calendarYear.isMultiple(of: 4) { return true }
        return false
    }
}
