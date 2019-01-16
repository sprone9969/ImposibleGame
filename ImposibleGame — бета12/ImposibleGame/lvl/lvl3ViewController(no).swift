//
//  lvl3ViewController.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 05.06.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.
//

import UIKit

class lvl3ViewController(no): UIViewController {

    var abc = ["А", "Б", "В", "Г", "Д", "Е", "Ё", "Ж", "З", "И", "Й", "К", "Л", "М", "Н", "О", "П", "Р", "С", "Т", "У", "Ф", "Х", "Ц", "Ч", "Ш", "Щ", "Ъ", "Ы", "Ь", "Э","Ю","Я"]
    var chisla2 = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
    var chisla3 = ["","","","","","","","","","","",""]
    var p = 0
    var p1 = 0
    var vrem = ""
    var bool = false
    var boolMas = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    var prov = -1
    //var prov_abc = -1
    var timer = Timer()
    var time_second = arc4random_uniform(7)  // задаваемый диапозон рандома от 3 - 10
    var timer2 = Timer()
    var time_second2 = 0.00
    var vrema = 0.00
    
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
            if prov == 12
            {
                p = 12
                for index in 0...11
                {
                    chisla3[index] = abc[p]
                    p += 1
                }
                for _ in 0...12
                {
                    chisla3.swapAt(Int(arc4random_uniform(11)), Int(arc4random_uniform(11)))
                }
                
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
                    chisla3[index] = abc[p]
                    p += 1
                }
                for _ in 0...12
                {
                    chisla3.swapAt(Int(arc4random_uniform(11)), Int(arc4random_uniform(11)))
                }
                
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
        }
    }
    //////////// условие по которому работает таймер1 конец
    
    //////// фунция таймера2 начало
    @objc func action2()
    {
        if bool == true
        {
            time_second2 += 0.01
            if prov == 13
            {
                //shakeLbl.text = "Потряси меня"
            }
            else
            {
               // shakeLbl.text = ""
            }
            
            
        }
        else if bool == false
        {
            timer2.invalidate()
            print(time)
        }
    }
    //////// фунция таймера2 начало
    
    //загрузка начало
    override func viewDidLoad()
    {
        super.viewDidLoad()
        prov = 0
        print("ндекс" + String(chisla3.index(after: prov)))
        
        
        vrema = (TestViewController.GlobalVar.top[0] * 36) * 4 // подсчет времени прохождения уровня
        print("Время выполнения задания: "+String(format: "%.2f", vrema))
        
        /////////// запуск таймера для показа цифр начало
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(lvl2ViewController.action), userInfo: nil, repeats: true)
        /////////// запуск таймера для показа цифр конец
        
        ////// обработка массива и перевод его в массив chisla3 начало
        for index in 0...11
        {
            chisla3[index] = abc[p]
            p += 1
        }
        for _ in 0...12
        {
            chisla3.swapAt(Int(arc4random_uniform(11)), Int(arc4random_uniform(11)))
        }
        ////// обработка массива и перевод его в массив chisla3 конец
        
        
        
    }
    //загрузка конец
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    @IBAction func BBtn1(_ sender: UIButton)
    {
        
        print("prov " + String(abc[prov]))
        print("3" + chisla3[prov])
        print(chisla3)
        print(prov)
        if abc[prov]  == chisla3[0]
        {
            if boolMas[0] == 0
            {
                boolMas[0] = 1
                Btn1.setTitle("", for: .normal)
                chisla3[0] = ""
                prov += 1
                
                print(prov)
                
                if prov == 33
                {
                    
                }
            }
            
        }
    }
    @IBAction func BBtn2(_ sender: UIButton)
    {
        print("prov " + String(abc[prov]))
        print("3" + chisla3[prov])
        print(chisla3)
        print(prov)
        if abc[prov]  == chisla3[1]
        {
            if boolMas[0] == 0
            {
                boolMas[0] = 1
                Btn1.setTitle("", for: .normal)
                chisla3[1] = ""
                prov += 1
                
                print(prov)
                
                if prov == 33
                {
                    
                }
            }
            
        }
    }
    @IBAction func BBtn3(_ sender: UIButton)
    {
        print("prov " + String(abc[prov]))
        print("3" + chisla3[prov])
        print(chisla3)
        print(prov)
        if abc[prov]  == chisla3[2]
        {
            if boolMas[0] == 0
            {
                boolMas[0] = 1
                Btn1.setTitle("", for: .normal)
                chisla3[2] = ""
                prov += 1
                
                print(prov)
                
                if prov == 33
                {
                    
                }
            }
            
        }
    }
    @IBAction func BBtn4(_ sender: UIButton)
    {
        print("prov " + String(abc[prov]))
        print("3" + chisla3[prov])
        print(chisla3)
        print(prov)
        if abc[prov]  == chisla3[3]
        {
            if boolMas[0] == 0
            {
                boolMas[0] = 1
                Btn1.setTitle("", for: .normal)
                chisla3[3] = ""
                prov += 1
                
                print(prov)
                
                if prov == 33
                {
                    
                }
            }
            
        }
    }
    @IBAction func BBtn5(_ sender: UIButton)
    {
        print("prov " + String(abc[4]))
        print("3" + chisla3[prov])
        print(chisla3)
        print(prov)
        if abc[prov]  == chisla3[4]
        {
            if boolMas[0] == 0
            {
                boolMas[0] = 1
                Btn1.setTitle("", for: .normal)
                chisla3[4] = ""
                prov += 1
                
                print(prov)
                
                if prov == 33
                {
                    
                }
            }
            
        }
    }
    @IBAction func BBtn6(_ sender: UIButton)
    {
        print("prov " + String(abc[5]))
        print("3" + chisla3[prov])
        print(chisla3)
        print(prov)
        if abc[prov]  == chisla3[5]
        {
            if boolMas[0] == 0
            {
                boolMas[0] = 1
                Btn1.setTitle("", for: .normal)
                chisla3[5] = ""
                prov += 1
                
                print(prov)
                
                if prov == 33
                {
                    
                }
            }
            
        }
    }
    @IBAction func BBtn7(_ sender: UIButton)
    {
        print("prov " + String(abc[6]))
        print("3" + chisla3[prov])
        print(chisla3)
        print(prov)
        if abc[prov]  == chisla3[6]
        {
            if boolMas[0] == 0
            {
                boolMas[0] = 1
                Btn1.setTitle("", for: .normal)
                chisla3[6] = ""
                prov += 1
                
                print(prov)
                
                if prov == 33
                {
                    
                }
            }
            
        }
    }
    @IBAction func BBtn8(_ sender: UIButton)
    {
        print("prov " + String(abc[7]))
        print("3" + chisla3[prov])
        print(chisla3)
        print(prov)
        if abc[prov]  == chisla3[7]
        {
            if boolMas[0] == 0
            {
                boolMas[0] = 1
                Btn1.setTitle("", for: .normal)
                chisla3[7] = ""
                prov += 1
                
                print(prov)
                
                if prov == 33
                {
                    
                }
            }
            
        }
    }
    @IBAction func BBtn9(_ sender: UIButton)
    {
        print("prov " + String(abc[8]))
        print("3" + chisla3[prov])
        print(chisla3)
        print(prov)
        if abc[prov]  == chisla3[8]
        {
            if boolMas[0] == 0
            {
                boolMas[0] = 1
                Btn1.setTitle("", for: .normal)
                chisla3[8] = ""
                prov += 1
                
                print(prov)
                
                if prov == 33
                {
                    
                }
            }
            
        }
    }
    @IBAction func BBtn10(_ sender: UIButton)
    {
        print("prov " + String(abc[9]))
        print("3" + chisla3[prov])
        print(chisla3)
        print(prov)
        if abc[prov]  == chisla3[9]
        {
            if boolMas[0] == 0
            {
                boolMas[0] = 1
                Btn1.setTitle("", for: .normal)
                chisla3[9] = ""
                prov += 1
                
                print(prov)
                
                if prov == 33
                {
                    
                }
            }
            
        }
    }
    @IBAction func BBtn11(_ sender: UIButton)
    {
        print("prov " + String(abc[10]))
        print("3" + chisla3[prov])
        print(chisla3)
        print(prov)
        if abc[prov]  == chisla3[10]
        {
            if boolMas[0] == 0
            {
                boolMas[0] = 1
                Btn1.setTitle("", for: .normal)
                chisla3[10] = ""
                prov += 1
                
                print(prov)
                
                if prov == 33
                {
                    
                }
            }
            
        }
    }
    @IBAction func BBtn12(_ sender: UIButton)
    {
        print("prov " + String(abc[11]))
        print("3" + chisla3[prov])
        print(chisla3)
        print(prov)
        if abc[prov]  == chisla3[11]
        {
            if boolMas[0] == 0
            {
                boolMas[0] = 1
                Btn1.setTitle("", for: .normal)
                chisla3[11] = ""
                prov += 1
                
                print(prov)
                
                if prov == 33
                {
                    
                }
            }
            
        }
    }

}
