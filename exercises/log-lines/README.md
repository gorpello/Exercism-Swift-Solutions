# Log Lines

Welcome to Log Lines on Exercism's Swift Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

When modeling data that can only take on a specific set of possible states—such as days of the week, compass directions, or buttons on a controller—basic types like `Int` or `String` have major drawbacks.
With integers or strings, your code must constantly check for invalid values (like a status code of `999` or a typo like `"leftt"`), and human readers cannot easily tell what numbers represent.

Swift solves this problem with [_Enumerations_][enumerations] (often shortened to *enums*).
An enum defines a common type for a group of related, named values. Because the compiler knows all possible cases ahead of time, it can check your code for accuracy and completeness at compile time.
Enums can also have methods, initializers, and computed properties.

## Defining Enums

Define an enum using the `enum` keyword followed by the type name, with its cases listed inside curly braces.
By Swift convention, the type name uses `UpperCamelCase`, while each case uses `lowerCamelCase`:

```swift
enum NESButton {
    case up
    case down
    case left
    case right
    case a
    case b
    case select
    case start
}
```

You can also define multiple cases on a single line separated by commas:

```swift
enum NESButton {
    case up, down, left, right, a, b, select, start
}
```

To refer to an enum case, write the enum type name, a dot (`.`), and the case name. Once the type is known or can be inferred by the compiler, you can omit the type name and use the shorter dot syntax:

```swift
var lastPressed = NESButton.up

// Swift infers the type, so you can omit the type name:
lastPressed = .down

let konamiCode: [NESButton] = [.up, .up, .down, .down, .left, .right, .left, .right, .b, .a]
```

## Methods and Initializers

Enums can define methods and custom initializers just like classes and structs. Inside an enum method, `self` refers to the current case value:

```swift
enum Coin {
    case heads
    case tails

    init(_ value: Int) {
        if value.isMultiple(of: 2) {
            self = .heads
        } else {
            self = .tails
        }
    }

    func flip() -> Coin {
        switch self {
        case .heads: return .tails
        case .tails: return .heads
        }
    }
}

let tails = Coin(13)     // .tails
let heads = Coin(0)      // .heads
let flipped = heads.flip() // .tails
```

## Raw Values

Enum cases can be prepopulated with default values called [_raw values_][raw-values].
All raw values in an enum must share the same type (such as `Int`, `String`, or `Character`):

```swift
enum NESButton: Character {
    case up = "⬆️"
    case down = "⬇️"
    case left = "⬅️"
    case right = "➡️"
    case a = "🅰️"
    case b = "🅱️"
    case select = "✅"
    case start = "🚦"
}

print(NESButton.left.rawValue) // Prints "⬅️"
```

You can initialize an enum from a raw value using `init(rawValue:)`. Because an invalid raw value might be provided, this initializer returns an optional:

```swift
let upButton = NESButton(rawValue: "⬆️") // Optional(NESButton.up)
let invalid = NESButton(rawValue: "🙄")  // nil
```

Swift can automatically assign raw values for `String` and `Int` enums:

- For `String` enums, each case's raw value defaults to its case name.
- For `Int` enums, raw values start at `0` and increment by 1 unless specified otherwise.

```swift
enum Planet: Int {
    case mercury = 1, venus, earth, mars
}

print(Planet.earth.rawValue) // Prints 3
```

[enumerations]: https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html
[raw-values]: https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html#ID149

## Instructions

In this exercise you'll be processing log-lines.

Each log line is a string formatted as follows: `"[<LVL>]: <MESSAGE>"`.

These are the different log levels:

- `TRC` (trace)
- `DBG` (debug)
- `INF` (info)
- `WRN` (warning)
- `ERR` (error)
- `FTL` (fatal)

You have three tasks, each of which need to be completed to provide the necessary functionality.

## 1. Create LogLevel enum

Define a `LogLevel` enum that has six cases corresponding to the above log levels, plus an unknown case for levels with missing or non-standard log levels.

- `trace`
- `debug`
- `info`
- `warning`
- `error`
- `fatal`
- `unknown`

## 2. Parse log level

Next, implement the `LogLevel` initializer to parse the log level of a log line:

```swift
LogLevel("[INF]: File deleted")
// Returns LogLevel.info
LogLevel("Something went wrong!")
// Returns LogLevel.unknown
```

## 3. Convert log line to short format

The log level of a log line is quite verbose.
To reduce the disk space needed to store the log lines, a short format is developed: `"<ENCODED_LEVEL>:<MESSAGE>"`.

The encoded log level is simple mapping of a log level to a number:

- `trace` - `0`
- `debug` - `1`
- `info` - `4`
- `warning` - `5`
- `error` - `6`
- `fatal` - `7`
- `unknown` - `42`

Implement the `shortFormat(message: String) -> String` method that can output the shortened log line format as a `String`:

```swift
let overflow = LogLevel.error
overflow.shortFormat(message: "Stack overflow")
// Returns "6:Stack overflow"
```

## Source

### Created by

- @wneumann