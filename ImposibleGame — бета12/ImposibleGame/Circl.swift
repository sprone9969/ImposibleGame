//
//  Circl.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 31.05.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.
//

import UIKit

class Circl: NSObject {
   public var circl = UIView()
    
    var startingPoint = CGPoint.zero
        
    {
        didSet
        {
            circl.center = startingPoint
        }
    }
    
    var circlColor
}
