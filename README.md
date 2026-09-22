<div align="center">

# Exercism · Swift Track

**My solutions to every exercise on the [Exercism Swift track](https://exercism.org/tracks/swift).**

Each exercise is a standalone Swift Package, formatted consistently and verified in CI.

<br>

[![CI](https://github.com/TUO_USER/exercism-swift/actions/workflows/ci.yml/badge.svg)](https://github.com/TUO_USER/exercism-swift/actions/workflows/ci.yml)
[![Swift](https://img.shields.io/badge/Swift-6.1-F05138?logo=swift&logoColor=white)](https://swift.org)
[![Platform](https://img.shields.io/badge/platform-macOS%20%7C%20Linux-lightgrey)](#requirements)
[![License](https://img.shields.io/badge/license-MIT-blue)](LICENSE)
[![Last commit](https://img.shields.io/github/last-commit/TUO_USER/exercism-swift)](https://github.com/TUO_USER/exercism-swift/commits/main)

[**Exercism profile →**](https://exercism.org/profiles/TUO_USER)

</div>

---

## 📖 About

This repository collects my worked solutions to the practice exercises on Exercism's Swift track. It's part learning log, part portfolio: every solution passes its full test suite, follows a consistent style, and lives in its own package so it can be built and tested in isolation.

The Swift track uses the modern [`swift-testing`](https://github.com/swiftlang/swift-testing) library, so a recent Swift toolchain is required.

## 🛠 Requirements

| | |
|---|---|
| **Swift** | 6.0 or later (track tooling targets 6.1) |
| **Testing** | `swift-testing` (bundled with the toolchain) |
| **Package manager** | Swift Package Manager |
| **Platforms** | macOS & Linux |

## 🚀 Running the tests

Every exercise is an independent Swift package. To run a single one:

```bash
cd exercises/two-fer
swift test
```

To run the tests for **all** exercises at once, from the repository root:

```bash
./scripts/run-tests.sh
```

This is the same script the CI runs on every push, so a green badge above means every solution here builds and passes.

## 🗂 Repository structure

Each exercise folder keeps the layout Exercism ships (`Sources/`, `Tests/`, `Package.swift`), so it stays compatible with `exercism submit`.

## 🎯 Approach

A few principles I try to hold to across the solutions:

- **Idiomatic first.** Prefer the standard-library way (`map`, `reduce`, `compactMap`, protocol conformances) over reinventing it.
- **Readable over clever.** A solution that reads clearly beats one that saves a line.
- **Consistent style.** All code is formatted with `swift format` before committing.
- **One commit per exercise.** So the history doubles as a log of what I solved and when.

## 📝 A note for fellow learners

These are my own solutions, published for reference and as a record of my progress. If you're working through the Swift track yourself, you'll get far more out of it by attempting each exercise before looking at anyone else's answer — struggling with it is where the learning happens.

## 📄 License

Released under the [MIT License](LICENSE). Exercise instructions and test suites belong to [Exercism](https://exercism.org) and its contributors.

---

<div align="center">
<sub>Built with <a href="https://exercism.org">Exercism</a></sub>
</div>