func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
    var multiples = Set<Int>()
    for base in inMultiples where base > 0 {
        multiples.formUnion(stride(from: base, to: limit, by: base))
    }
    return multiples.reduce(0, +)
}
