//
//  ViewController.swift
//  Guessing Game
//
//  Created by David Koller on 12/2/16.
//  Copyright © 2016 David Koller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var guessedNumber: UITextField!

    @IBOutlet weak var resultLable: UILabel!
    @IBAction func guessNumber(_ sender: AnyObject) {
        let num = arc4random_uniform(6)
        
        let guessedNum = Int(guessedNumber.text!)
        
        if Int(num) == guessedNum{
            resultLable.text = "Your Correct!"
        }else{
            resultLable.text = "The number was \(num)"
        }
        
    }
}

