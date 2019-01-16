//
//  Perehod1ViewController.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 30.05.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.
//

import UIKit

class Perehod1ViewController: UIViewController {

    var shet = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl2.text = "Твое время = " + String(format:"%.2f", SecondViewController.globalPerem.time_zatracheno)
        // Do any additional setup after loading the view.
    }

  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var goText: UIButton!
    @IBOutlet weak var textbox: UITextView!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    
    @IBAction func go(_ sender: Any)
    {
        
        if shet == 0
        {
            goText.setTitle("Поехали", for: .normal)
            lbl1.text = "Стоп"
            lbl2.text = "ты забыл узнать правила."
            textbox.text = "Правила простые, ты должен как и в обучение собирать числа от 1 до 36 в порядке возрастания."
            
        shet += 1
        }
        else if shet == 1 
        {
        performSegue(withIdentifier: "segueForLvl2", sender: self)
        }
        
    }
    
   

}
