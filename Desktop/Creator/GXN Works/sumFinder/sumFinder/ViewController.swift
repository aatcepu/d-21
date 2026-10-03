//
//  ViewController.swift
//  sumFinder
//
//  Created by Student on 13/03/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SUM(_ sender: UIButton) {
        
        let number1 = Int(num1.text!)
        let number2 = Int(num2.text!)
        
        let sum = number1! + number2!
        
        Label.text = "sum is : \(sum)"
    }
    
}

