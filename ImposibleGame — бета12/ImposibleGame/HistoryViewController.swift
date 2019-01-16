
//
//  HistoryViewController.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 31.05.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var backToMenu: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        backToMenu.layer.cornerRadius = backToMenu.frame.size.width / 2
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backToMenuBtn(_ sender: UIButton)
    {
        performSegue(withIdentifier: "segueForMenu", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
