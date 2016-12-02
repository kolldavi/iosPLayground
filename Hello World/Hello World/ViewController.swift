//
//  ViewController.swift
//  Hello World
//
//  Created by David Koller on 12/1/16.
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
    @IBOutlet weak var ageOfCat: UILabel!
    @IBOutlet weak var greetingField: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBAction func updateLable(_ sender: AnyObject) {
        
        let num = NSString(string: nameField.text!).doubleValue * 7
        ageOfCat.text = String(num.rounded())
    }
}

