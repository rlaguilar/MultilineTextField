import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(MultilineTextFieldTests.allTests),
    ]
}
#endif
