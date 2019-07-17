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
    
    
    func CalculateMultiAndDivBy(){
        for (index , one ) in NumWithOpArray.enumerated(){
            if(one.Op == "x" || one.Op == "/"){
                let afterCurrent = NumWithOpArray[index + 1]
                var newCalc : CalcElement!
                if (one.Op == "x" ){
                    newCalc = CalcElement(Num : one.Num * afterCurrent.Num , Op : afterCurrent.Op)
                                   }
                else if (one.Op == "/" ){
                    newCalc = CalcElement(Num : one.Num / afterCurrent.Num , Op : afterCurrent.Op)
                                        }
                 NumWithOpArray.remove(at: index)
                 NumWithOpArray.remove(at: index)
                 NumWithOpArray.insert(newCalc, at: index)
                 break
                                               }
                                                          }
                                  }
    









}
