import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    poem.components(separatedBy: "\n")
}

func frontDoorPassword(_ phrase: String) -> String {
    splitOnNewlines(phrase).map { $0.first ?? "_" }.map(String.init).joined(separator: "")
}

func backDoorPassword(_ phrase: String) -> String {
    splitOnNewlines(phrase)
        .map { $0.trimmingCharacters(in: [" "]) }
        .map { $0.last ?? "_" }
        .map(String.init)
        .joined(separator: "")
        .appending(", please")
}

// .enumerate().map { (index, element) in }

func secretRoomPassword(_ phrase: String) -> String {
    splitOnNewlines(phrase)
        .map { $0.trimmingCharacters(in: [" "]) }
        .enumerated()
        .map {
            let index = $1.index($1.startIndex, offsetBy: $0, limitedBy: $1.endIndex) ?? $1.startIndex
            return $1[index]
        }
        .map(String.init)
        .joined(separator: "")
        .appending("!")
        .uppercased()
}
