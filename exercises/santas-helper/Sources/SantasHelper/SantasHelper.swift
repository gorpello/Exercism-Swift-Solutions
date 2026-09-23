func getName(_ item: (name: String, amount: Int)) -> String {
    item.name
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  (name, amount)
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) ->  [(name: String, amount: Int)] {
    let index = items.firstIndex { name, _ in name == toy}
    guard let index else { return items }
    var items = items
    items[index].amount = amount
    return items
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
    items.map { ($0, $1, category) }
}
