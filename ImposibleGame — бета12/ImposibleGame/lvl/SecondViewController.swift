//
//  SecondViewController.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 20.05.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var backToMenu: UIButton!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    
    var chisla = ["1","2","3","4","5","6","7","8","9"]
    var chisla2 = ["","","","","","","","",""]
    var boolMas = [0,0,0,0,0,0,0,0,0]
    var prov = 0
    var timer = Timer()
    var timerSec = Timer()
    var time_second = arc4random_uniform(7)  // задаваемый диапозон рандома от 3 - 10
    var vrema = 0.00
    
    var bool = false
    
    
    struct globalPerem
    {
        static var time_zatracheno = 0.00
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) { // функция проходит, когда девайс трясется
        
        if event?.subtype == UIEventSubtype.motionShake
        {
            if time_second == 0 {
                //prov = 1
                for  _ in  0...arc4random_uniform(9)
                {
                    chisla.swapAt(Int(arc4random_uniform(9)), Int(arc4random_uniform(9)))
                }
                
                
                for  _ in  0...arc4random_uniform(9)
                {
                    chisla2.swapAt(Int(arc4random_uniform(9)), Int(arc4random_uniform(9)))
                }
                
                btn1.setTitle(String(chisla2[0]), for: .normal)
                btn2.setTitle(String(chisla2[1]), for: .normal)
                btn3.setTitle(String(chisla2[2]), for: .normal)
                btn4.setTitle(String(chisla2[3]), for: .normal)
                btn5.setTitle(String(chisla2[4]), for: .normal)
                btn6.setTitle(String(chisla2[5]), for: .normal)
                btn7.setTitle(String(chisla2[6]), for: .normal)
                btn8.setTitle(String(chisla2[7]), for: .normal)
                btn9.setTitle(String(chisla2[8]), for: .normal)
                boolMas = [0,0,0,0,0,0,0,0,0]
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        SecondViewController.globalPerem.time_zatracheno = 0.00
        backToMenu.layer.cornerRadius = backToMenu.frame.size.width / 2
        vrema = (TestViewController.GlobalVar.top[0] * 9) * 4  // подсчет времени прохождения уровня
        print("топ"+String(vrema))
        timeLbl.text = "Игра начнеться через: " + String(time_second)
        
        
        for  _ in  0...arc4random_uniform(9)
        {
            chisla.swapAt(Int(arc4random_uniform(9)), Int(arc4random_uniform(9)))
            chisla2 = chisla
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondViewController.action), userInfo: nil, repeats: true)
        
        btn1.setTitle("", for: .normal)
        btn2.setTitle("", for: .normal)
        btn3.setTitle("", for: .normal)
        btn4.setTitle("", for: .normal)
        btn5.setTitle("", for: .normal)
        btn6.setTitle("", for: .normal)
        btn7.setTitle("", for: .normal)
        btn8.setTitle("", for: .normal)
        btn9.setTitle("", for: .normal)
        
    }
    

    @IBAction func backToMenuBtn(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)
    }
    @objc func action() // условие по которому работает таймер
    {
        if time_second == 0
        {
            timer.invalidate()
            btn1.setTitle(String(chisla2[0]), for: .normal)
            btn2.setTitle(String(chisla2[1]), for: .normal)
            btn3.setTitle(String(chisla2[2]), for: .normal)
            btn4.setTitle(String(chisla2[3]), for: .normal)
            btn5.setTitle(String(chisla2[4]), for: .normal)
            btn6.setTitle(String(chisla2[5]), for: .normal)
            btn7.setTitle(String(chisla2[6]), for: .normal)
            btn8.setTitle(String(chisla2[7]), for: .normal)
            btn9.setTitle(String(chisla2[8]), for: .normal)
            
            prov = 1
            print(prov)
            bool = true
            timerSec = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(SecondViewController.action2), userInfo: nil, repeats: true) // запуск таймера
        }
        else
        {
            time_second -= 1
            print("Игра начнеться через: " + String(time_second))
            timeLbl.text = "Игра начнеться через: " + String(time_second)
        }
    }
    
    @objc func action2()
    {
        if bool == true
        {
            timeLbl.text = ""
            SecondViewController.globalPerem.time_zatracheno += 0.01
        }
        else if bool == false
        {
            timerSec.invalidate()
            print(time)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    ///////// кнопки ниже
    @IBAction func backbtn(_ sender: UIButton)
    {
        timer.invalidate()
    } 
    
    @IBAction func bbtn1(_ sender: UIButton)
    {
        print(prov)
        
        if String(prov) == chisla2[0]
        {
            
            if boolMas[0] == 0
            {
                boolMas[0] = 1
                btn1.setTitle("", for: .normal)
                chisla2[0] = ""
                prov = prov + 1
                if prov == 10
                {
                    bool = false
                    if SecondViewController.globalPerem.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "segueForPerehod", sender: self)
                    }
                    else if SecondViewController.globalPerem.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "segueRepeat", sender: self)
                    }
                    
                    
                    //segueForPerehod
                }
            }
        }
    }
    @IBAction func bbtn2(_ sender: UIButton)
    {print(prov)
        if String(prov) == chisla2[1]
        {
            if boolMas[1] == 0
            {
                boolMas[1] = 1
                btn2.setTitle("", for: .normal)
                chisla2[1] = ""
                prov = prov + 1
                if prov == 10
                {
                    bool = false
                    if SecondViewController.globalPerem.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "segueForPerehod", sender: self)
                    }
                    else if SecondViewController.globalPerem.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "segueRepeat", sender: self)
                    }
                }
            }
            
        }
    }
    @IBAction func bbtn3(_ sender: UIButton)
    {print(prov)
        if String(prov) == chisla2[2]
        {
            if boolMas[2] == 0
            {
                boolMas[2] = 1
                btn3.setTitle("", for: .normal)
                chisla2[2] = ""
                prov = prov + 1
                if prov == 10
                {
                    bool = false
                    if SecondViewController.globalPerem.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "segueForPerehod", sender: self)
                    }
                    else if SecondViewController.globalPerem.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "segueRepeat", sender: self)
                    }
                }
            }
        }
    }
    @IBAction func bbtn4(_ sender: UIButton)
    {print(prov)
        if String(prov) == chisla2[3]
        {
            if boolMas[3] == 0
            {
                boolMas[3] = 1
                btn4.setTitle("", for: .normal)
                chisla2[3] = ""
                prov = prov + 1
                if prov == 10
                {
                    bool = false
                    if SecondViewController.globalPerem.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "segueForPerehod", sender: self)
                    }
                    else if SecondViewController.globalPerem.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "segueRepeat", sender: self)
                    }
                }
            }
        }
    }
    @IBAction func bbtn5(_ sender: UIButton)
    {print(prov)
        if String(prov) == chisla2[4]
        {
            if boolMas[4] == 0
            {
                boolMas[4] = 1
                btn5.setTitle("", for: .normal)
                chisla2[4] = ""
                prov = prov + 1
                if prov == 10
                {
                    bool = false
                    if SecondViewController.globalPerem.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "segueForPerehod", sender: self)
                    }
                    else if SecondViewController.globalPerem.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "segueRepeat", sender: self)
                    }
                }
            }
        }
    }
    @IBAction func bbtn6(_ sender: UIButton)
    {print(prov)
        if String(prov) == chisla2[5]
        {
            if boolMas[5] == 0
            {
                boolMas[5] = 1
                btn6.setTitle("", for: .normal)
                chisla2[5] = ""
                prov = prov + 1
                if prov == 10
                {
                    bool = false
                    if SecondViewController.globalPerem.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "segueForPerehod", sender: self)
                    }
                    else if SecondViewController.globalPerem.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "segueRepeat", sender: self)
                    }
                }
            }
        }
    }
    @IBAction func bbtn7(_ sender: UIButton)
    {print(prov)
        if String(prov) == chisla2[6]
        {
            if boolMas[6] == 0
            {
                boolMas[6] = 1
                btn7.setTitle("", for: .normal)
                chisla2[6] = ""
                prov = prov + 1
                if prov == 10
                {
                    bool = false
                    if SecondViewController.globalPerem.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "segueForPerehod", sender: self)
                    }
                    else if SecondViewController.globalPerem.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "segueRepeat", sender: self)
                    }
                }
            }
        }
    }
    @IBAction func bbtn8(_ sender: UIButton)
    {print(prov)
        if String(prov) == chisla2[7]
        {
            if boolMas[7] == 0
            {
                boolMas[7] = 1
                btn8.setTitle("", for: .normal)
                chisla2[7] = ""
                prov = prov + 1
                if prov == 10
                {
                    bool = false
                    if SecondViewController.globalPerem.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "segueForPerehod", sender: self)
                    }
                    else if SecondViewController.globalPerem.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "segueRepeat", sender: self)
                    }
                }
            }
        }
    }
    @IBAction func bbtn9(_ sender: UIButton)
    {print(prov)
        if String(prov) == chisla2[8]
        {
            if boolMas[8] == 0
            {
                boolMas[8] = 1
                btn9.setTitle("", for: .normal)
                chisla2[8] = ""
                prov = prov + 1
                if prov == 10
                {
                    bool = false
                    if SecondViewController.globalPerem.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "segueForPerehod", sender: self)
                    }
                    else if SecondViewController.globalPerem.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "segueRepeat", sender: self)
                    }
                }
            }
        }
    }
    
}
