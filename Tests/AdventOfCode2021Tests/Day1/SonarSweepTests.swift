//
//  File.swift
//  
//
//  Created by Scott Luxenberg on 12/2/21.
//

import Foundation
import XCTest
@testable import AdventOfCode2021


final class SonarSweepTests: XCTestCase {
    let testData = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
    
    func testDay1Part1() {
        let instance = SonarSweep(inputValues: testData)
        XCTAssertEqual(instance.part1(), 7)
    }
    
    func testDay1Part2() {
        let instance = SonarSweep(inputValues: testData)
        XCTAssertEqual(instance.part2(), 5)
    }
}
