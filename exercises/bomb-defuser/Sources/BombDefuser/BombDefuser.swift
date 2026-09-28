typealias ChangeClosure = @Sendable ((String, String, String)) -> (String, String, String)

// TODO: Please define the flip closure
let flip: ChangeClosure = { (arg) -> (String, String, String) in
    (arg.1, arg.0, arg.2)
}

// TODO: Please define the rotate closure
let rotate: ChangeClosure = { (arg) -> (String, String, String) in
    (arg.1, arg.2, arg.0)
}

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> ([UInt8], (String, String, String)) -> (String, String, String) {
    return { bits, wires in
        var finalState = wires
        for bit in bits.reversed() {
            finalState = bit == 0 ? flipper(finalState) : rotator(finalState)
        }
        return finalState
    }
}
