//
//  File.swift
//  
//
//  Created by Scott Luxenberg on 12/2/21.
//

import Foundation
import XCTest
@testable import AdventOfCode2021


final class DiveTests: XCTestCase {
    let testData = [Dive.DiveCommand("forward 5"),
                    Dive.DiveCommand("down 5"),
                    Dive.DiveCommand("forward 8"),
                    Dive.DiveCommand("up 3"),
                    Dive.DiveCommand("down 8"),
                    Dive.DiveCommand("forward 2")]
    
    func testDay2Part1() {
        let instance = Dive(inputValues: testData)
        XCTAssertEqual(instance.part1(), 150)
    }
    
    func testDay2Part2() {
        let instance = Dive(inputValues: testData)
        XCTAssertEqual(instance.part2(), 900)
    }
}
