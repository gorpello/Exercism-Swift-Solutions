import Foundation

class Squares {
  // Write your code for the 'Difference Of Squares' exercise here.
    
    var target: Int

    init(_ target: Int) {
        self.target = target
    }
    
    var squareOfSum: Int {
        let sum = (1...target).reduce(.zero, +)
        return sum * sum
    }
    
    var sumOfSquares: Int {
        (1...target).map { $0 * $0 }.reduce(.zero, +)
    }
    
    var differenceOfSquares: Int {
        squareOfSum - sumOfSquares
    }
    
}
