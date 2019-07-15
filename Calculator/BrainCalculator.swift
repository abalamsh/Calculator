//
//  BrainCalculator.swift
//  Calculator
//
//  Created by Abalamsh on 15/07/2019.
//  Copyright © 2019 Abalamsh. All rights reserved.
//

import Foundation
class BrainCalculator{
    
    func Add(Number : Double , With Operation : Character){
        NumWithOpArray.append(CalcElement(Num : Number , Op : Operation))
        
    }
    
    typealias CalcElement = (Num : Double , Op : Character)
    
    private var NumWithOpArray : [CalcElement]=[]
    
}
