import Foundation

enum ResistorColor: Int, CaseIterable {
    case black, brown, red, orange, yellow, green, blue, violet, grey, white
    
    static var colors: [String] {
        allCases.map { "\($0)" }
    }
    
    static func colorCode(for color: String) -> Int {
        colors.firstIndex(of: color) ?? -1
    }
}
