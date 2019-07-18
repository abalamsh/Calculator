//
//  ViewFront.swift
//  Calculator
//
//  Created by Abalamsh on 08/07/2019.
//  Copyright © 2019 Abalamsh. All rights reserved.
//

import UIKit

class ViewFront : UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.shadowColor = UIColor.red.withAlphaComponent(0.2).cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOffset = CGSize(width: -3, height: -3)
        self.layer.shadowOpacity = 1
        
        let layer : CAGradientLayer = CAGradientLayer()
        layer.frame=CGRect(x: 0, y: 0, width: self.frame.size.width,
        height: self.frame.size.height)
        layer.startPoint = CGPoint(x: 0, y: 0.1)
        layer.endPoint = CGPoint(x: 0, y: 0.7)
        layer.colors=[UIColor.black.cgColor,UIColor.red.cgColor]
        layer.zPosition = -1
        self.layer.addSublayer(layer)
    }
}
