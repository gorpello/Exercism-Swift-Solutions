// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
    layers.count*2
}

// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Double, sauce: Double) {
    let noodles = layers.reduce(0.0) { $1 == "noodles" ? $0 + 3 : $0 }
    let sauce = layers.reduce(0.0) { $1 == "sauce" ? $0 + 0.2 : $0 }
    return (noodles, sauce)
}

// TODO: define the 'toOz' function
func toOz(_ amount: inout (noodles: Double, sauce: Double)) {
    amount.sauce *= 33.814
}

// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
    
    /// I'm keeping this implementation as required by the exercise, but it could be simplified into a single function.
    ///
    /// ```
    /// func `number of layers`(of layer: String, layers: String...) -> Int {
    ///     layers.filter { $0 == layer }.count
    /// }
    /// ```
    
    func `number of layers of mozzarella`(_ layers: [String]) -> Int {
        layers.filter { $0 == "mozzarella" }.count
    }
    
    func `number of layers of ricotta`(_ layers: [String]) -> Int {
        layers.filter { $0 == "ricotta" }.count
    }
    
    func `number of layers of béchamel`(_ layers: [String]) -> Int {
        layers.filter { $0 == "béchamel" }.count
    }
    
    func `number of layers of sauce`(_ layers: [String]) -> Int {
        layers.filter { $0 == "sauce" }.count
    }
    
    func `number of layers of meat`(_ layers: [String]) -> Int {
        layers.filter { $0 == "meat" }.count
    }
    
//    mozzarella, ricotta, and béchamel -> false
    return `number of layers of mozzarella`(layers) + `number of layers of ricotta`(layers) + `number of layers of béchamel`(layers) <= `number of layers of sauce`(layers) + `number of layers of meat`(layers)
}
