//
//  PersonBuilder.swift
//  QFBuilder
//
//  Created by 情风 on 2018/12/20.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

import UIKit


/// 建造者抽象类
class PersonBuilder: NSObject {
    var path: UIBezierPath! = UIBezierPath.init()
    
    func drawHead() {
        
    }
    
    func drawBody() {
        
    }
    
    func drawLeftLeg() {
        
    }
    
    func drawRightLeg() {
        
    }
    
    func drawLeftHand() {
        
    }
    
    func drawRightHand() {
        
    }
    
    func getLayer(color: UIColor) -> CALayer? {
        return nil
    }
}
