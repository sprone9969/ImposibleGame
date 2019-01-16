//
//  lvl2ViewController.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 27.05.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.
//

import UIKit

class lvl2ViewController: UIViewController {
    
    var chisla = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"]
    var chisla2 = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
    var chisla3 = ["","","","","","","","","","","",""]
    var p = 0
    var p1 = 0
    var vrem = ""
    var bool = false
    var boolMas = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    var prov = 1
    var prov2 = 0
    var timer = Timer()
    var time_second = arc4random_uniform(7)  // задаваемый диапозон рандома от 3 - 10
    var timer2 = Timer()
    var time_second2 = 0.00
    var vrema = 0.00
    
    struct GlobalVar {
        static var time_zatracheno = 0.00
    }
    
    @IBOutlet weak var shakeLbl: UILabel!
    @IBOutlet weak var Btn1: UIButton!
    @IBOutlet weak var Btn2: UIButton!
    @IBOutlet weak var Btn3: UIButton!
    @IBOutlet weak var Btn4: UIButton!
    @IBOutlet weak var Btn5: UIButton!
    @IBOutlet weak var Btn6: UIButton!
    @IBOutlet weak var Btn7: UIButton!
    @IBOutlet weak var Btn8: UIButton!
    @IBOutlet weak var Btn9: UIButton!
    @IBOutlet weak var Btn10: UIButton!
    @IBOutlet weak var Btn11: UIButton!
    @IBOutlet weak var Btn12: UIButton!
    
    // функция проходит, когда девайс трясется начало
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        
        if event?.subtype == UIEventSubtype.motionShake
        {
            if prov == 13
            {
                p = 12
                for index in 0...11
                {
                    chisla3[index] = chisla[p]
                    p += 1
                }
                for _ in 0...12
                {
                    chisla3.swapAt(Int(arc4random_uniform(11)), Int(arc4random_uniform(11)))
                }
                shakeLbl.text = ""
                Btn1.setTitle(String(chisla3[0]), for: .normal)
                Btn2.setTitle(String(chisla3[1]), for: .normal)
                Btn3.setTitle(String(chisla3[2]), for: .normal)
                Btn4.setTitle(String(chisla3[3]), for: .normal)
                Btn5.setTitle(String(chisla3[4]), for: .normal)
                Btn6.setTitle(String(chisla3[5]), for: .normal)
                Btn7.setTitle(String(chisla3[6]), for: .normal)
                Btn8.setTitle(String(chisla3[7]), for: .normal)
                Btn9.setTitle(String(chisla3[8]), for: .normal)
                Btn10.setTitle(String(chisla3[9]), for: .normal)
                Btn11.setTitle(String(chisla3[10]), for: .normal)
                Btn12.setTitle(String(chisla3[11]), for: .normal)
                boolMas = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            }
            else if prov == 25
            {
                p = 24
                for index in 0...11
                {
                    chisla3[index] = chisla[p]
                    p += 1
                }
                for _ in 0...12
                {
                    chisla3.swapAt(Int(arc4random_uniform(11)), Int(arc4random_uniform(11)))
                }
                shakeLbl.text = ""
                Btn1.setTitle(String(chisla3[0]), for: .normal)
                Btn2.setTitle(String(chisla3[1]), for: .normal)
                Btn3.setTitle(String(chisla3[2]), for: .normal)
                Btn4.setTitle(String(chisla3[3]), for: .normal)
                Btn5.setTitle(String(chisla3[4]), for: .normal)
                Btn6.setTitle(String(chisla3[5]), for: .normal)
                Btn7.setTitle(String(chisla3[6]), for: .normal)
                Btn8.setTitle(String(chisla3[7]), for: .normal)
                Btn9.setTitle(String(chisla3[8]), for: .normal)
                Btn10.setTitle(String(chisla3[9]), for: .normal)
                Btn11.setTitle(String(chisla3[10]), for: .normal)
                Btn12.setTitle(String(chisla3[11]), for: .normal)
                boolMas = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            }
            
        }
    }
    // функция проходит, когда девайс трясется конец
    
    //////////// условие по которому работает таймер1 начало
    @objc func action()
    {
        if time_second == 0
        {
            ////// присвоение текста кнопкам начало
            Btn1.setTitle(String(chisla3[0]), for: .normal)
            Btn2.setTitle(String(chisla3[1]), for: .normal)
            Btn3.setTitle(String(chisla3[2]), for: .normal)
            Btn4.setTitle(String(chisla3[3]), for: .normal)
            Btn5.setTitle(String(chisla3[4]), for: .normal)
            Btn6.setTitle(String(chisla3[5]), for: .normal)
            Btn7.setTitle(String(chisla3[6]), for: .normal)
            Btn8.setTitle(String(chisla3[7]), for: .normal)
            Btn9.setTitle(String(chisla3[8]), for: .normal)
            Btn10.setTitle(String(chisla3[9]), for: .normal)
            Btn11.setTitle(String(chisla3[10]), for: .normal)
            Btn12.setTitle(String(chisla3[11]), for: .normal)
            boolMas = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ////// присвоение текста кнопкам конец
            
            bool = true
            timer2 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(lvl2ViewController.action2), userInfo: nil, repeats: true) // запуск таймера
            
        }
        else
        {
            time_second -= 1
            shakeLbl.text = "Игра начнеться через: " + String(time_second)
        }
    }
    //////////// условие по которому работает таймер1 конец
    
    //////// фунция таймера2 начало
    @objc func action2()
    {
        if bool == true
        {
            shakeLbl.text = ""
            time_second2 += 0.01
            
        }
        else if bool == false
        {
            timer2.invalidate()
            print(time)
            lvl2ViewController.GlobalVar.time_zatracheno = time_second2
        }
    }
    //////// фунция таймера2 начало
    
    ///функция выводит текст начало
    fileprivate func extractedFunc()
    {
        if prov == 12
        {
            shakeLbl.text = "Потряси меня"
            print("Потряси меня")
        }
        if prov == 24
        {
            shakeLbl.text = "Потряси меня"
            print("Потряси меня")
        }
    }
    ///функция выводит текст конец
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
         vrema = (TestViewController.GlobalVar.top[0] * 36) * 4 // подсчет времени прохождения уровня
        print("Время выполнения задания: "+String(format: "%.2f", vrema))
        shakeLbl.text = "Игра начнеться через: " + String(time_second)
        
        /////////// запуск таймера для показа цифр начало
      timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(lvl2ViewController.action), userInfo: nil, repeats: true)
        /////////// запуск таймера для показа цифр конец
        
        ////// обработка массива и перевод его в массив chisla3 начало
            for index in 0...11
            {
                chisla3[index] = chisla[p]
                p += 1
            }
            for _ in 0...12
            {
                chisla3.swapAt(Int(arc4random_uniform(11)), Int(arc4random_uniform(11)))
            }
        ////// обработка массива и перевод его в массив chisla3 конец

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    ////////кнопка начало
    @IBAction func bbtn1(_ sender: UIButton)
    {
        if String(prov) == chisla3[0]
        {
            if boolMas[0] == 0
            {
                boolMas[0] = 1
                Btn1.setTitle("", for: .normal)
                chisla3[0] = ""
                prov += 1
                prov2 += 1
                print(prov)
                extractedFunc()
                if prov == 37
                {
                    bool = false
                if time_second2 < vrema
                {
                    performSegue(withIdentifier: "seguePerehodLvl3", sender: self)
                }
                else if lvl2ViewController.GlobalVar.time_zatracheno > vrema
                {
                    performSegue(withIdentifier: "seguePereigrai2", sender: self)
                }
                }
            }
            
        }
    }
    @IBAction func bbtn2(_ sender: UIButton)
    {
        if String(prov) == chisla3[1]
        {
            if boolMas[1] == 0
            {
                boolMas[1] = 1
                Btn2.setTitle("", for: .normal)
                chisla3[1] = ""
                prov += 1
                prov2 += 1
                print(prov)
                extractedFunc()
                if prov == 37
                {
                    bool = false
                    if lvl2ViewController.GlobalVar.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "seguePerehodLvl3", sender: self)
                    }
                    else if lvl2ViewController.GlobalVar.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "seguePereigrai2", sender: self)
                    }
                }
            }
            
        }
    }
    @IBAction func bbtn3(_ sender: UIButton)
    {
        if String(prov) == chisla3[2]
        {
            if boolMas[2] == 0
            {
                boolMas[2] = 1
                Btn3.setTitle("", for: .normal)
                chisla3[2] = ""
                prov += 1
                prov2 += 1
                print(prov)
                extractedFunc()
                if prov == 37
                {
                    bool = false
                    if lvl2ViewController.GlobalVar.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "seguePerehodLvl3", sender: self)
                    }
                    else if lvl2ViewController.GlobalVar.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "seguePereigrai2", sender: self)
                    }
                }
            }
            
        }
    }
    @IBAction func bbtn4(_ sender: UIButton)
    {
        if String(prov) == chisla3[3]
        {
            if boolMas[3] == 0
            {
                boolMas[3] = 1
                Btn4.setTitle("", for: .normal)
                chisla3[3] = ""
                prov += 1
                prov2 += 1
                print(prov)
                extractedFunc()
                if prov == 37
                {
                    bool = false
                    if lvl2ViewController.GlobalVar.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "seguePerehodLvl3", sender: self)
                    }
                    else if lvl2ViewController.GlobalVar.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "seguePereigrai2", sender: self)
                    }
                }
            }
            
        }
    }
    @IBAction func bbtn5(_ sender: UIButton)
    {
        if String(prov) == chisla3[4]
        {
            if boolMas[4] == 0
            {
                boolMas[4] = 1
                Btn5.setTitle("", for: .normal)
                chisla3[4] = ""
                prov += 1
                prov2 += 1
                print(prov)
                extractedFunc()
                if prov == 37
                {
                    bool = false
                    if lvl2ViewController.GlobalVar.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "seguePerehodLvl3", sender: self)
                    }
                    else if lvl2ViewController.GlobalVar.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "seguePereigrai2", sender: self)
                    }
                }
            }
            
        }
    }
    @IBAction func bbnt6(_ sender: UIButton)
    {
        if String(prov) == chisla3[5]
        {
            if boolMas[5] == 0
            {
                boolMas[5] = 1
                Btn6.setTitle("", for: .normal)
                chisla3[5] = ""
                prov += 1
                prov2 += 1
                print(prov)
                extractedFunc()
                if prov == 37
                {
                    bool = false
                    if lvl2ViewController.GlobalVar.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "seguePerehodLvl3", sender: self)
                    }
                    else if lvl2ViewController.GlobalVar.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "seguePereigrai2", sender: self)
                    }
                }
            }
            
        }
    }
    @IBAction func bbtn7(_ sender: UIButton)
    {
        if String(prov) == chisla3[6]
        {
            if boolMas[6] == 0
            {
                boolMas[6] = 1
                Btn7.setTitle("", for: .normal)
                chisla3[6] = ""
                prov += 1
                prov2 += 1
                print(prov)
                extractedFunc()
                if prov == 37
                {
                    bool = false
                    if lvl2ViewController.GlobalVar.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "seguePerehodLvl3", sender: self)
                    }
                    else if lvl2ViewController.GlobalVar.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "seguePereigrai2", sender: self)
                    }
                }
            }
            
        }
    }
    @IBAction func bbtn8(_ sender: UIButton)
    {
        if String(prov) == chisla3[7]
        {
            if boolMas[7] == 0
            {
                boolMas[7] = 1
                Btn8.setTitle("", for: .normal)
                chisla3[7] = ""
                prov += 1
                prov2 += 1
                print(prov)
                extractedFunc()
                if prov == 37
                {
                    bool = false
                    if lvl2ViewController.GlobalVar.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "seguePerehodLvl3", sender: self)
                    }
                    else if lvl2ViewController.GlobalVar.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "seguePereigrai2", sender: self)
                    }
                }
            }
            
        }
    }
    @IBAction func bbtn9(_ sender: UIButton)
    {
        if String(prov) == chisla3[8]
        {
            if boolMas[8] == 0
            {
                boolMas[8] = 1
                Btn9.setTitle("", for: .normal)
                chisla3[8] = ""
                prov += 1
                prov2 += 1
                print(prov)
                extractedFunc()
                if prov == 37
                {
                    bool = false
                    if lvl2ViewController.GlobalVar.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "seguePerehodLvl3", sender: self)
                    }
                    else if lvl2ViewController.GlobalVar.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "seguePereigrai2", sender: self)
                    }
                }
            }
            
        }
    }
    @IBAction func bbtn10(_ sender: UIButton)
    {
        if String(prov) == chisla3[9]
        {
            if boolMas[9] == 0
            {
                boolMas[9] = 1
                Btn10.setTitle("", for: .normal)
                chisla3[9] = ""
                prov += 1
                prov2 += 1
                print(prov)
                extractedFunc()
                if prov == 37
                {
                    bool = false
                    if lvl2ViewController.GlobalVar.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "seguePerehodLvl3", sender: self)
                    }
                    else if lvl2ViewController.GlobalVar.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "seguePereigrai2", sender: self)
                    }
                }
            }
            
        }
    }
    @IBAction func bbtn11(_ sender: UIButton)
    {
        if String(prov) == chisla3[10]
        {
            if boolMas[10] == 0
            {
                boolMas[10] = 1
                Btn11.setTitle("", for: .normal)
                chisla3[10] = ""
                prov += 1
                prov2 += 1
                print(prov)
                extractedFunc()
                if prov == 37
                {
                    bool = false
                    if lvl2ViewController.GlobalVar.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "seguePerehodLvl3", sender: self)
                    }
                    else if lvl2ViewController.GlobalVar.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "seguePereigrai2", sender: self)
                    }
                }
            }
            
        }
    }
    @IBAction func bbtn12(_ sender: UIButton)
    {
        if String(prov) == chisla3[11]
        {
            if boolMas[11] == 0
            {
                boolMas[11] = 1
                Btn12.setTitle("", for: .normal)
                chisla3[11] = ""
                prov += 1
                prov2 += 1
                print(prov)
                extractedFunc()
                if prov == 37
                {
                    bool = false
                    if lvl2ViewController.GlobalVar.time_zatracheno < vrema
                    {
                        performSegue(withIdentifier: "seguePerehodLvl3", sender: self)
                    }
                    else if lvl2ViewController.GlobalVar.time_zatracheno > vrema
                    {
                        performSegue(withIdentifier: "seguePereigrai2", sender: self)
                    }
                }
            }
            
        }
    }
   /////////кнопки конец

}
