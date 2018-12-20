//
//  PersonDirector.swift
//  QFBuilder
//
//  Created by 情风 on 2018/12/20.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

import UIKit

/// 指挥者 让建造者知道如何创建
class PersonDirector: NSObject {
    var personBuilder: PersonBuilder
    var personColor: UIColor
    
    /// 通过客户端要建造的对象初始化指挥者
    ///
    /// - Parameter builderType: 目标类型
    init(_ builderType: PersonBuilder, personColor: UIColor) {
        self.personBuilder = builderType
        self.personColor = personColor
    }
    
    
    /// 建造过程
    ///
    /// - Returns: 一系列的建造过程结束之后的结果
    func createPerson() -> CALayer {
        personBuilder.drawHead()
        personBuilder.drawBody()
        personBuilder.drawLeftLeg()
        personBuilder.drawRightLeg()
        personBuilder.drawLeftHand()
        personBuilder.drawRightHand()
        
        return personBuilder.getLayer(color: personColor)!
    }

}
