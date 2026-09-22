// Defined the 'expectedMinutesInOven' constant
let expectedMinutesInOven = 40

// Defined the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
    expectedMinutesInOven-elapsedMinutes
}

// Defined the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: Int) -> Int {
    layers*2
}

// Defined the 'totalTimeInMinutes' function
func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
    preparationTimeInMinutes(layers: layers) + elapsedMinutes
}
