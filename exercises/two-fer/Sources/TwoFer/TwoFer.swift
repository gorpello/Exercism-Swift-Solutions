// Write your code for the 'TwoFer' exercise in this file.

func twoFer(name: String = "") -> String {
    guard name != "" else { return "One for you, one for me." }
    return "One for \(name), one for me."
}
