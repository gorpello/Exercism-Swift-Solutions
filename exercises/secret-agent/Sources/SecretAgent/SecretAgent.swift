func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    return { password == $0 ? secret : "Sorry. No hidden secrets here." }
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
    let first = f(room)
    let second = f(first)
    return (first, second, f(second))
}
