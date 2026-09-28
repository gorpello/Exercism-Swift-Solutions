func newScoreBoard() -> [String: Int] {
    [:]
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
    scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
    scores.removeValue(forKey: name)
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
    guard let _ = scores[name] else { return }
    scores[name] = 0
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
    guard let player = scores[name] else { return }
    scores[name] = player + delta
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
    scores.sorted { $0.key < $1.key }
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
    scores.sorted { $0.value > $1.value }
}
