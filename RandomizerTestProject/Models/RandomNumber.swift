//
//  RandomNumber.swift
//  RandomizerTestProject
//
//  Created by Светлана Сенаторова on 25.03.2023.
//


class RandomNumber {
    
    var minimumValue: Int
    var maximumValue: Int
    
    init(minimumValue: Int, maximumValue: Int) {
        self.minimumValue = minimumValue
        self.maximumValue = maximumValue
    }
    
    func getNumber() -> Int {
        Int.random(in: minimumValue...maximumValue)
    }
}
