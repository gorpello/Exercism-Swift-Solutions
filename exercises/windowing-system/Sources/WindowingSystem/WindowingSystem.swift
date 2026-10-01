// TODO: Define the Size struct
struct Size {
    
    var width: Int = 80
    var height: Int = 60
    
    mutating func resize(newWidth: Int, newHeight: Int) {
        self.height = newHeight
        self.width = newWidth
    }
    
}

// TODO: Define the Position struct
struct Position {
    var x: Int = 0
    var y: Int = 0
    
    mutating func moveTo(newX: Int, newY: Int) {
        self.x = newX
        self.y = newY
    }
}

// TODO: Define the Window class
class Window {
    var title: String
    let screenSize = Size(width: 800, height: 600)
    var size = Size()
    var position = Position()
    var contents: String?
    
    init(
        title: String = "New Window",
        contents: String? = nil,
        size: Size = Size(),
        position: Position = Position()
    ) {
        self.title = title
        self.size = size
        self.position = position
        self.contents = contents
    }
    
    func resize(to newSize: Size) {
        let maxWidth = screenSize.width - position.x
        let maxHeight = screenSize.height - position.y
        
        self.size = Size(
            width: max(1, min(newSize.width, maxWidth)),
            height: max(1, min(newSize.height, maxHeight))
        )
    }
    
    func move(to newPosition: Position) {
        let maxX = screenSize.width - size.width
        let maxY = screenSize.height - size.height
        
        self.position = Position(
            x: max(0, min(newPosition.x, maxX)),
            y: max(0, min(newPosition.y, maxY))
        )
    }
    
    func update(title: String) {
        self.title = title
    }
    
    func update(text: String?) {
        self.contents = text
    }
    
    func display() -> String {
        "\(self.title)\nPosition: (\(self.position.x), \(self.position.y)), Size: (\(self.size.width) x \(self.size.height))\n\(self.contents ?? "[This window intentionally left blank]")\n"
    }
    
}
