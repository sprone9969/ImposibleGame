//
//  PereigraiViewController.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 03.06.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.
//

import UIKit

class PereigraiViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var perehod: UIButton!
    
    var bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl3.text = "Ты выполнял этот уровень целых\n " + String(format: "%.2f", SecondViewController.globalPerem.time_zatracheno) + "\nможет еще раз попробуешь?"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Da(_ sender: UIButton)
    {
        if bool == false
        {
           lbl1.text = "Погоди"
            lbl2.text = ""
            lbl3.text = "Сделай 2 вдоха😮, 2 выдыха😧 \nи нажимай поехали "
            perehod.setTitle("Поехали🏁", for: .normal)
            bool = true
        }
        else
        {
        performSegue(withIdentifier: "segueRepeat", sender: self)
        }
    }
    
   

}
