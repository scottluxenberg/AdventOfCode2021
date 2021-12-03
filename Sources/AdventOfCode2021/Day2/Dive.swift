//
//  File.swift
//  
//
//  Created by Scott Luxenberg on 12/2/21.
//

import Foundation

public class Dive {
    public struct DiveCommand {
        let command: String
        let distance: Int
        
        public init(_ command: String) {
            let commandParts = command.components(separatedBy: " ")
            self.command = commandParts[0]
            self.distance = Int(commandParts[1])!
        }
    }
    
    
    let inputValues: [DiveCommand]

    public class func retrieveData() -> [DiveCommand] {
        let fileURL = Bundle.module.url(forResource: "data2", withExtension: "txt")!
        let file = try! String(contentsOf: fileURL)
        let fileData = file
            .components(separatedBy: .newlines)
            .compactMap(DiveCommand.init)
        
        return fileData
    }
    
    public init(inputValues: [DiveCommand]) {
        self.inputValues = inputValues
    }
    
    public func part1() -> Int {
        var horizontal = 0
        var depth = 0
        for commandData in inputValues {
            switch commandData.command {
            case "forward":
                horizontal += commandData.distance
            case "up":
                depth -= commandData.distance
            case "down":
                depth += commandData.distance
            default:
                break
            }
        }
        
        return horizontal * depth
    }
    
    public func part2() -> Int {
        var horizontal = 0
        var depth = 0
        var aim = 0
        
        for commandData in inputValues {
            switch commandData.command {
            case "forward":
                horizontal += commandData.distance
                depth += commandData.distance * aim
            case "up":
                aim -= commandData.distance
            case "down":
                aim += commandData.distance
            default:
                break
            }
        }
        
        return horizontal * depth
    }
}
