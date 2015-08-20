//
//  ViewController.swift
//  Caculyator
//
//  Created by Дмитрий Сидоров on 09.08.15.
//  Copyright (c) 2015 Дмитрий Сидоров. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Display: UILabel!
    
    var FlagNumber = false
    var firstNumber = 0
    var secondNumber = 0
    var operation = ""
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Numbers(sender: UIButton) {
        var number = sender.currentTitle
        if FlagNumber {
            if Display.text != nil && number != nil {
                Display.text = Display.text! + number!
            }
        }
        else {
            Display.text = number
            FlagNumber = true
        }
    }
    
    @IBAction func Operations(sender: UIButton) {
        FlagNumber = false
        if Display.text!.toInt() != nil {
            secondNumber = Display.text!.toInt()!
        }
        if operation == "+" {
            result = firstNumber + secondNumber
        }
        else if operation == "-"{
            result = firstNumber - secondNumber
        }
        else if operation == "×" {
            result = firstNumber * secondNumber
        }
        else if operation == "÷"{
            result = firstNumber / secondNumber
        }
        
        if operation != 0 {
            case 1001:
                fi
            def
        }
        
        Display.text = "\(result)"
    }
    
    @IBAction func Inversion(sender: UIButton) {
        
    }
    
    @IBAction func Clear(sender: UIButton) {
        FlagNumber = false
        var firstNumber = 0
        var secondNumber = 0
        Display.text = "0"
    }
}



