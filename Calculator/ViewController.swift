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
        Label.text! +=  String(sender.tag)           }
    
    
    
    @IBAction func OperationsButton(_ sender: UIButton) {
        Brain.Add(Number: Double(Label.text!)!, With: Character(sender.titleLabel!.text!))
        Label.text="0"
              }
    
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle{ return .lightContent }}





