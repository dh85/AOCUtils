/// A protocol defining the structure for solving a daily puzzle.
public protocol DaySolver {
    /// The type of data produced after parsing the input. Must be equatable.
    associatedtype InputData: Equatable
    /// The type of the result for Part 1. Must be equatable.
    associatedtype Result1: Equatable
    /// The type of the result for Part 2. Must be equatable.
    associatedtype Result2: Equatable

    /// The day number (e.g., 1, 2, 3).
    var day: Int { get }
    /// The test input string for this day.
    var testInput: String { get }

    /// Parses the raw input string into the `InputData` type.
    func parse(input: String) -> InputData?

    /// Solves Part 1 of the puzzle using the parsed data.
    func solvePart1(data: InputData) -> Result1

    /// Solves Part 2 of the puzzle using the parsed data.
    func solvePart2(data: InputData) -> Result2
}
