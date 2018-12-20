//
//  PersonThinBuilder.swift
//  QFBuilder
//
//  Created by 情风 on 2018/12/20.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

import UIKit


/// 具体建造类  按步骤建造某种类型的产品
class PersonThinBuilder: PersonBuilder {

    override func drawHead() {
        path.addArc(withCenter: CGPoint.init(x: 150, y: 100), radius: 25.0, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)//圆心在（150, 100）
    }
    
    override func drawBody() {
        path.move(to:CGPoint.init(x:150, y:125))//移动到圆底部
        path.addLine(to:CGPoint.init(x:150, y:175))//画腰
    }
    
    override func drawLeftLeg() {
        path.addLine(to:CGPoint.init(x:125, y:225))//画左腿
    }
    
    override func drawRightLeg() {
        path.move(to:CGPoint.init(x:150, y:175));//移动到双腿交接出
        
        path.addLine(to:CGPoint.init(x:175, y:225))//画右腿
    }
    
    override func drawLeftHand() {
        path.move(to:CGPoint.init(x:150, y:140))//双手交叉处
        path.addLine(to:CGPoint.init(x:125, y:175))//画左手
    }
    
    override func drawRightHand() {
        path.move(to:CGPoint.init(x:150, y:140))//双手交叉处
        path.addLine(to:CGPoint.init(x:175, y:175))//画右手
    }
    
   
    
    override func getLayer(color: UIColor) -> CALayer? {
        
        let layer = CAShapeLayer.init()
        layer.strokeColor = color.cgColor
        layer.fillColor = UIColor.clear.cgColor
        layer.lineWidth = 5
        layer.lineJoin = kCALineJoinRound
        layer.lineCap = kCALineCapRound
        layer.path = path.cgPath
        
        return layer
    }
    
}
