//
//  ViewController.swift
//  QFBuilder
//
//  Created by 情风 on 2018/12/20.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var thinView: UIView!
    @IBOutlet weak var fatView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let thinDirector = PersonDirector.init(PersonThinBuilder(), personColor: UIColor.orange)
        self.thinView.layer .addSublayer(thinDirector.createPerson())
        
        let fatDirector = PersonDirector.init(PersonFatBuilder(), personColor: UIColor.green)
        self.fatView.layer .addSublayer(fatDirector.createPerson())
        
    }
}



