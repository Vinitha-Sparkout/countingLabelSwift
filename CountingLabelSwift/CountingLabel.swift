//
//  File.swift
//  CountingLabelSwift
//
//  Created by Vinitha on 29/01/19.
//  Copyright © 2019 Vinitha. All rights reserved.
//

import Foundation
import  UIKit

open class countingLabel: UILabel {

    public var startValue = 0
    public var endValue = 1000
    public var animationDuration:Double = 1.5 //In secounds
    public var animationStarts = Date()
    
    public var countSartValue : Double = 0
    public var countEndValue : Double = 0
    public func startCounting(){
        animationStarts = Date()
        countSartValue = Double(startValue)
        countEndValue = Double(endValue)
        let displayLink = CADisplayLink(target: self, selector: #selector(handleCounting))
        displayLink.add(to: .main, forMode: .default)
    }
    
    @objc public func handleCounting()
    {
        
        let elapsed = Date().timeIntervalSince(animationStarts)
        if(elapsed > animationDuration)
        {
            self.text = "\(endValue)"
        }
        else
        {
            let percent = elapsed/animationDuration
            let value = countSartValue + percent * (countEndValue - countSartValue)
            self.text = String(format:"%.2f", value)
        }
        
        
        
    }
    
}
