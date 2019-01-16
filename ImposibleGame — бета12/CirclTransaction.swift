//
//  CirclTransaction.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 31.05.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.
//

// https://www.youtube.com/watch?v=B9sH_VxPPo4 досмотреть ролик

import UIKit

class CirclTransaction: NSObject {
    public var circl = UIView()
    
    var startingPoint = CGPoint.zero
        
        {
        didSet
        {
            circl.center = startingPoint
        }
    }
    
    var circlColor = UIColor.white
    var duration = 0.3
    
    enum CirclTransactionMode:Int {
        case present, dismiss, pop
    }
    var transitionMode:CirclTransactionMode = .present
}

extension CirclTransaction:UIViewControllerAnimatedTransitioning
{
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext
        
        if transitionMode == .present
        {
            
        }
        else
        {
            
        }
    }
}
