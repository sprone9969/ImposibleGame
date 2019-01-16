//
//  settings2ViewController.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 14.06.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.
//

import UIKit

class settings2ViewController: UIViewController {

    @IBOutlet weak var backMenu: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        backMenu.layer.cornerRadius = backMenu.frame.size.width / 2
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
