import Testing

public func runParseTest<S: DaySolver>(
    solver: S,
    expected: S.ParsedData,
    fileID: String = #fileID,
    filePath: String = #filePath,
    line: Int = #line,
    column: Int = #column
) throws {
    let parsed = solver.parse(input: solver.testInput)
    let sourceLocation = SourceLocation(
        fileID: fileID,
        filePath: filePath,
        line: line,
        column: column
    )
    let unwrappedParsed = try #require(parsed, sourceLocation: sourceLocation)
    #expect(unwrappedParsed == expected, sourceLocation: sourceLocation)
}

public func runSolutionTest1<S: DaySolver>(
    solver: S,
    data: S.ParsedData,
    expected: S.Result1,
    fileID: String = #fileID,
    filePath: String = #filePath,
    line: Int = #line,
    column: Int = #column
) {
    let sourceLocation = SourceLocation(
        fileID: fileID,
        filePath: filePath,
        line: line,
        column: column
    )
    #expect(
        solver.solvePart1(data: data) == expected,
        sourceLocation: sourceLocation
    )
}

public func runSolutionTest2<S: DaySolver>(
    solver: S,
    data: S.ParsedData,
    expected: S.Result2,
    fileID: String = #fileID,
    filePath: String = #filePath,
    line: Int = #line,
    column: Int = #column
) {
    let sourceLocation = SourceLocation(
        fileID: fileID,
        filePath: filePath,
        line: line,
        column: column
    )
    #expect(
        solver.solvePart2(data: data) == expected,
        sourceLocation: sourceLocation
    )
}
