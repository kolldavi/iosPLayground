//
//  ViewController.swift
//  isItPrime
//
//  Created by David Koller on 12/23/16.
//  Copyright © 2016 David Koller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    
    
    @IBAction func isItPrime(_ sender: AnyObject) {
       
        
        if let userEnterString = numberTextField.text {
            let userEnterInt = Int(userEnterString)
            if let number = userEnterInt{
            var isPrime = true;
            
            if number == 1 {
                isPrime = false
            }
            
            var i = 2
            
            while i < number {
                if number % i == 0{
                    isPrime = false
                    break
                }else{
                    i += 1
                }
            }
                if isPrime {
                    resultLabel.text = "\(number) is prime!"
                }else {
                    resultLabel.text = "\(number) is not prime!"
                }
            }
        }else{
            resultLabel.text  = "Please Enter a Whole Number!"
        }
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

