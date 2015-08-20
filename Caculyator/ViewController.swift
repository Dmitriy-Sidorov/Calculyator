//
//  ViewController.swift
//  Caculyator
//
//  Created by Дмитрий Сидоров on 09.08.15.
//  Copyright (c) 2015 Дмитрий Сидоров. All rights reserved.
//

import UIKit



var x:Double = 0
var y:Double = 0
var operationActive = 0
var enterFlag = 1
var yFlag = 1
var decimalPoint = 0
var power = 1

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var result: UILabel!
    
    


    @IBAction func digital(sender: UIButton) {
        println(sender.tag)
        if enterFlag == 1 {
            x = 0
            enterFlag = 0
        }
        if decimalPoint == 0 {
            x = x * 10 + Double(sender.tag)
            switch String(stringInterpolationSegment: x){
            case let z where z.hasSuffix(".0"):
                self.result.text = String(Int64(x))
            default: self.result.text = String(stringInterpolationSegment: x)
            }
        }
        else {
            x = x + Double(sender.tag)/pow(10, Double(power))
            power++
            switch String(stringInterpolationSegment: x){
            case let z where z.hasSuffix(".0"):
                self.result.text = String(Int64(x))
            default: self.result.text = String(stringInterpolationSegment: x)
            }
        }
    }

    @IBAction func operations(sender: UIButton) {
        if enterFlag != 1 && yFlag == 1 {
            switch operationActive {
                case 1001:
                    x = y / x
                case 1002:
                    x = y * x
                case 1003:
                    x = y - x
                case 1004:
                    x = y + x
                default: self.result.text = String(stringInterpolationSegment: x)
            }
        }
        operationActive = sender.tag
        y = x
        yFlag = 1
        enterFlag = 1
        power = 1
        decimalPoint = 0
        switch String(stringInterpolationSegment: x){
        case let z where z.hasSuffix(".0"):
            self.result.text = String(Int64(x))
        default: self.result.text = String(stringInterpolationSegment: x)
        }
    }
        
    @IBAction func inversion(sender: UIButton) {
        x = -x
        switch String(stringInterpolationSegment: x){
        case let z where z.hasSuffix(".0"):
            self.result.text = String(Int64(x))
        default: self.result.text = String(stringInterpolationSegment: x)
        }
    }

    @IBAction func decimal(sender: AnyObject) {
        if decimalPoint == 0 {
            decimalPoint = 1
            switch String(stringInterpolationSegment: x){
            case let z where z.hasSuffix(".0"):
                self.result.text = String(Int64(x))
            default: self.result.text = String(stringInterpolationSegment: x)
            }
        }
    }
    
    @IBAction func clear(sender: AnyObject) {
        decimalPoint = 0
        x = 0
        y = 0
        operationActive = 0
        enterFlag = 1
        yFlag = 1
        power = 1
        switch String(stringInterpolationSegment: x){
        case let z where z.hasSuffix(".0"):
            self.result.text = String(Int64(x))
        default: self.result.text = String(stringInterpolationSegment: x)
        }
    }
    
    
}

