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
                /*Display.text = Display.text! + number!*/
            }
        }
        else {
            Display.text = number
            FlagNumber = true
        }
    }
    
    @IBAction func Operations(sender: UIButton) {
        
    }
    
    @IBAction func Equals(sender: UIButton) {
        
    }
    
    @IBAction func Clear(sender: UIButton) {
    
    }
}



