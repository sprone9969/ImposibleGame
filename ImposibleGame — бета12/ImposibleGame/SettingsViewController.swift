//
//  SettingsViewController.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 20.05.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var backToMenu: UIButton!
    @IBOutlet weak var ControllerOTLT: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
         //backToMenu.layer.cornerRadius = backToMenu.frame.size.width / 2
        // Do any additional setup after loading the view.
    }
    @IBAction func backToMenuBtn(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Controller(_ sender: Any)
    {
        if ControllerOTLT.selectedSegmentIndex == 0
        {
            ViewController.music.bool_music = true
        }
        else
        {
            ViewController.music.bool_music = false
        }
    }
    
}
