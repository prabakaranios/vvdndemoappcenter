//
//  vvdndemoappTests.swift
//  vvdndemoappTests
//
//  Created by vvdn on 19/01/25.
//

import XCTest
@testable import vvdndemoapp

final class vvdndemoappTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}



class MathOperationsTests: XCTestCase {
    
    var mathOps: MathOperations!
    
    override func setUp() {
        super.setUp()
        // Create an instance of MathOperations before each test method
        mathOps = MathOperations()
    }
    
    override func tearDown() {
        // Cleanup after each test method
        mathOps = nil
        super.tearDown()
    }
    
    func testAdd() {
        // Test addition
        let result = mathOps.add(2, 3)
        XCTAssertEqual(result, 5, "Expected 2 + 3 to equal 5")
    }
    
    func testSubtract() {
        // Test subtraction
        let result = mathOps.subtract(5, 3)
        XCTAssertEqual(result, 2, "Expected 5 - 3 to equal 2")
    }
    
    func testMultiply() {
        // Test multiplication
        let result = mathOps.multiply(3, 4)
        XCTAssertEqual(result, 12, "Expected 3 * 4 to equal 12")
    }
    
    func testDivide() {
        // Test division
        do {
            let result = try mathOps.divide(10, 2)
            XCTAssertEqual(result, 5, "Expected 10 / 2 to equal 5")
        } catch {
            XCTFail("Division failed with error: \(error)")
        }
    }
    
    func testDivideByZero() {
        // Test division by zero
        XCTAssertThrowsError(try mathOps.divide(10, 0), "Expected division by zero to throw an error") { error in
            XCTAssertEqual(error as? MathOperations.DivisionError, MathOperations.DivisionError.divisionByZero)
        }
    }
}
