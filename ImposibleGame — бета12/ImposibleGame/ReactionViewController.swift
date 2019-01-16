//
//  ReactionViewController.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 27.05.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.
//

import UIKit

class ReactionViewController: UIViewController {

    @IBOutlet weak var Top1: UILabel!
    @IBOutlet weak var Top2: UILabel!
    @IBOutlet weak var Top3: UILabel!

    
    @IBOutlet weak var backToMenu: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        backToMenu.layer.cornerRadius = backToMenu.frame.size.width / 2
        Top1.text = "1 место: "+String(TestViewController.GlobalVar.top[0])
        Top2.text = "2 место: "+String( TestViewController.GlobalVar.top[1])
        Top3.text = "3 место: "+String( TestViewController.GlobalVar.top[2])
        
       
        
    }

    @IBAction func backToMenuBtn(_ sender: UIButton)
    {
        performSegue(withIdentifier: "segueForMenu", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 
}
