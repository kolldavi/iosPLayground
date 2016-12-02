//
//  ViewController.swift
//  Caculator
//
//  Created by David Koller on 7/15/16.
//  Copyright © 2016 David Koller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet fileprivate weak var display: UILabel!
 
   fileprivate var userTyping = false
    
  
    @IBAction func clear(_ sender: UIButton) {
         display.text = "0"
       brain.clear()
       
    }
    
    @IBAction fileprivate func touchButton(_ sender: UIButton) {
        let digit  = sender.currentTitle!
        if userTyping
        {
           let currentDisplay = display.text!
            display.text = currentDisplay + digit
        }
        else
        {
          display.text = digit
        }
       // print("touch \(digit) button")
        userTyping = true;
    }
  fileprivate  var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
   //  var  description: String!
    
  // private var brain: CalculatorBrainModel = CalculatorBrainModel()
     fileprivate var brain = CalculatorBrainModel()
    @IBAction fileprivate func touchOperator(_ sender: UIButton) {
       //maybe get rid of ()
        if(userTyping) {
            brain.setOperand(displayValue)
             userTyping = false
        }
       if let mathSymbol = sender.currentTitle {
        brain.performOperation(mathSymbol)
        }
        displayValue = brain.result
            
        
    }

}

