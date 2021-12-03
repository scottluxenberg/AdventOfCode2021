//
//  File.swift
//  
//
//  Created by Scott Luxenberg on 12/2/21.
//

import Foundation

public class SonarSweep {
    let inputValues: [Int]

    public class func retrieveData() -> [Int] {
        let fileURL = Bundle.module.url(forResource: "data1", withExtension: "txt")!
        let file = try! String(contentsOf: fileURL)
        let fileData = file
            .components(separatedBy: .newlines)
            .compactMap(Int.init)
        
        return fileData
    }
    
    public init(inputValues: [Int]) {
        self.inputValues = inputValues
    }
    
    public func part1() -> Int {
        var increasingElements = 0
        for index in 1..<inputValues.count {
            if inputValues[index] - inputValues[index-1] > 0 {
                increasingElements+=1
            }
        }
        
        return increasingElements
    }
    
    public func part2() -> Int {
        var increasingElements = 0
        
        for index in 3..<inputValues.count {
            let firstTriSum = inputValues[index-3] + inputValues[index-2] + inputValues[index-1]
            let secondTriSum = inputValues[index-2] + inputValues[index-1] + inputValues[index]
            if secondTriSum - firstTriSum > 0 {
                increasingElements+=1
            }
        }
        
        return increasingElements
    }
}

