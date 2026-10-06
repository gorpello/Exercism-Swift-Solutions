func toRna(_ dna: String) -> String {
    dna.map {
        if $0 == "G" { return "C" }
        if $0 == "C" { return "G" }
        if $0 == "T" { return "A" }
        if $0 == "A" { return "U" }
        return ""
    }.joined()
}
