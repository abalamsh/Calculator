//
//  ViewController.swift
//  Calculator
//
//  Created by Abalamsh on 30/06/2019.
//  Copyright © 2019 Abalamsh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    
    let Brain = BrainCalculator()
    
    
    @IBAction func ButtonsAction(_ sender: UIButton) {
        if(Label.text == "0"){ Label.text = ""}
        
        if sender.tag == -1 {
            if (!Label.text!.contains(".")){
                Label.text! += "."
            }
        }else{
         Label.text! +=  String(sender.tag)
        }
                  }
    
    var lastOp : Character = " "
    var lastNum : Double = 0
    
    @IBAction func OperationsButton(_ sender: UIButton) {
         lastOp = Character(sender.titleLabel!.text!)
         lastNum = Double(Label.text!)!
        print(lastOp)
        print(lastNum)
        Brain.Add(Number: Double(Label.text!)!, With: Character(sender.titleLabel!.text!))
        if sender.titleLabel!.text! == "="{
            Label.text = Brain.result()
            Brain.Restart()
        }else{
            Label.text="0"
        }
              }
    
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle{ return .lightContent }
    
    
    
    @IBAction func AcButton(_ sender: UIButton) {
        Label.text = "0"
        lastOp = " "
        lastNum = 0
        
        Brain.Restart()
    }
    
    
    @IBAction func MinusPlus(_ sender: UIButton) {
        Label.text = String(Double(Label.text!)! * -1)
    }
    
    
    @IBAction func Percent(_ sender: UIButton) {
        if(lastOp == "+"){
            Label.text = String (lastNum * (Double(Label.text!)!/100.0) )
        }else if(lastOp == "-"){
            Label.text = String (lastNum * (Double(Label.text!)!/100.0)  )
        }
        else{
            Label.text = String(Double(Label.text!)! / 100 )
        }
        
    }
    
    
    
    
}





