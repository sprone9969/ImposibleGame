//
//  PerehodLvl3ViewController.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 05.06.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.
//

import UIKit

class PerehodLvl3ViewController: UIViewController {

    @IBOutlet weak var textBox1: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        textBox1.text = "Ты прошел этот уровень за "+String(format: "%.2f", lvl2ViewController.GlobalVar.time_zatracheno)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func GoToLvl3Btn(_ sender: UIButton)
    {
        performSegue(withIdentifier: "segueLvl3", sender: self)
    }
    

}
