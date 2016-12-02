//
//  CaculatorBrainModel.swift
//  Caculator
//
//  Created by David Koller on 7/18/16.
//  Copyright © 2016 David Koller. All rights reserved.
//

import Foundation

/*func multiply(op1: Double, op2: Double) -> Double
 {
 return op1 * op2
 } */

class CalculatorBrainModel
{
    fileprivate var accumulator = 0.0
    fileprivate var internalProgram = [AnyObject]()
 
    
    func setOperand(_ operand: Double)  {
        accumulator = operand
        internalProgram.append(operand as AnyObject)
    }
    
    fileprivate var operations: Dictionary<String, Operation> = [
        "π" : Operation.constant(M_PI),
        "℮" : Operation.constant(M_E),
        "√" : Operation.unaryOperation(sqrt),
        "cos" : Operation.unaryOperation(cos),
        /* closers
         //way with Method outside of classs
         // "×" : Operation.BinaryOperation(multiply),
         Closher Long way
         "×" : Operation.BinaryOperation({(op1: Double, op2: Double) -> Double in
         return op1 * op2
         }),
         Closher shorter way
         "×" : Operation.BinaryOperation({ (op1, op2) in return op1 * op2}),
         */
        "×" : Operation.binaryOperation({$0 * $1 }),
        "÷" : Operation.binaryOperation({$0 / $1 }),
        "−" : Operation.binaryOperation({$0 - $1 }),
        "+" : Operation.binaryOperation({$0 + $1 }),
        "=" : Operation.equals
        
    ]
   fileprivate enum Operation {
        case constant(Double)
        case unaryOperation((Double) -> Double)
        case binaryOperation((Double, Double) -> Double)
        case equals
    }
    
   func performOperation(_ symbol: String){
    internalProgram.append(symbol as AnyObject)
        if let operation = operations[symbol] {
            switch operation {
            case Operation.constant(let value):
                accumulator = value
            case .unaryOperation(let function):
                accumulator = function(accumulator)
            case .binaryOperation(let function):
                exicutePendingBinaryOperations()
                pending = PendingBinaryOperationInfo(binaryFunction: function, firstOperand: accumulator )
            case .equals:
                exicutePendingBinaryOperations()
            }
        }
    }
    fileprivate func exicutePendingBinaryOperations()
    {
        if pending != nil {
            accumulator = pending!.binaryFunction(pending!.firstOperand , accumulator)
            pending = nil
        }
    }
    fileprivate var pending: PendingBinaryOperationInfo?
    
  fileprivate  struct PendingBinaryOperationInfo {
        var binaryFunction: (Double, Double) -> Double
        var firstOperand: Double
    }
    typealias PropertyList = AnyObject
   
    var program: PropertyList
    {
        get{
            return internalProgram as CalculatorBrainModel.PropertyList
        }
        set{
            clear()
            if let arrayOfAnyObject = newValue as? [AnyObject] {
                for op in arrayOfAnyObject
                {
                    if let operand = op as? Double
                    {
                        setOperand(operand)
                    } else if let operation = op as? String
                    {
                        performOperation(operation)
                    }
                }
            }
        }
    }

    fileprivate var isPartialResult :Bool
        {
    get{
    return pending == nil
    }
    }

    func clear()
    {
        accumulator = 0.0
        pending = nil
        internalProgram.removeAll()
    }
    
    var result: Double {
        get{
            return accumulator
        }
    }
}
