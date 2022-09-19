//
//  main.swift
//  CalculationEnum
//
//  Created by Boris Zitserman
//

import Foundation

enum CalculationType: String {
    case subtraction = "вычитание"
    case addition = "сложение"
    case multiplication = "умножения"
    case division = "деления"
}

func calculation(numOne: Int, numTwo: Int, calcType: CalculationType) -> Int? {
    var res = 0
    
    switch calcType {
    case .subtraction:
        res = numOne - numTwo
    case .addition:
        res = numOne + numTwo
    case .multiplication:
        res = numOne * numTwo
    case .division:
        numTwo != 0 ? res = numOne / numTwo : print("На ноль не делим")
        return nil
    }
    print("Результат \(calcType.rawValue) \(numOne) и \(numTwo) равен \(res)")
    
    return res

}

var result = calculation(numOne: 5, numTwo: 6, calcType: .division)
result = calculation(numOne: 5, numTwo: 6, calcType: .multiplication)
result = calculation(numOne: 5, numTwo: 6, calcType: .subtraction)
result = calculation(numOne: 5, numTwo: 6, calcType: .addition)
