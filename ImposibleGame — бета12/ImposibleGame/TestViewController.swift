//
//  TestViewController.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 25.05.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    @IBOutlet weak var backLbl: UILabel!
    @IBOutlet weak var backToMenu: UIButton!
    @IBOutlet weak var testbtn: UIButton! // для изменения цвета в кнопке
    @IBOutlet weak var rezlbl: UILabel! // для изменения текста в лейбле rezlbl
    var time = arc4random_uniform(20) // время таймера выставляется рандомно
    var time_sec = 0.00
    var timer = Timer() // таймер
    var timer_sec = Timer()
    var bool = false
    var max = 0.00
    
    struct GlobalVar // глобальные переменные, для обращения из любого виева
    {
        static var reak = 0.00 // переменная время реакции
        static var top = [0.00,0.00,0.00] // массив топ 3 результатов
        static var best_rez = 0.00 // лучший результат
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        backToMenu.layer.cornerRadius = backToMenu.frame.size.width / 2 // что бы кнопка была круглой
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(TestViewController.action), userInfo: nil, repeats: true) // запуск таймера
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func backBtn(_ sender: UIButton)
    {
        performSegue(withIdentifier: "segueToMenu", sender: self)
    }
    
    @IBAction func testbnt(_ sender: UIButton)
    {
        if testbtn.backgroundColor == UIColor.green
        {
        bool = true
        }
        }
    
    @objc func action() //условие по которому работает таймер
    {
        if time == 0
        {
           testbtn.backgroundColor = UIColor.green
            timer.invalidate()
           
            
            timer_sec = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(TestViewController.action2), userInfo: nil, repeats: true) // запуск таймера
        }
        else
        {
            time -= 1
         
            
        }
    }

    @objc func action2() // условие по которому работает таймер
    {
        if bool == false
        {
            time_sec += 0.01
            
        }
        else
        {
            backLbl.text = "⬅️ теперь можно играть"
            timer_sec.invalidate()
            rezlbl.text = "Разультат = "+String(format:"%0.2f", time_sec)+" сек."
            
            
            TestViewController.GlobalVar.top[0] = time_sec
            if time_sec < TestViewController.GlobalVar.top[0]
            {
                
                TestViewController.GlobalVar.top[0] = time_sec
            }
            else if time_sec < TestViewController.GlobalVar.top[1] 
            {
                
                TestViewController.GlobalVar.top[1] = time_sec
            }
            else if time_sec < TestViewController.GlobalVar.top[2]
            {
                
                TestViewController.GlobalVar.top[2] = time_sec
            }
          
            UserDefaults.standard.set(String(TestViewController.GlobalVar.top[0]), forKey: "topRes") // сохранение в память
        }
    }
}
