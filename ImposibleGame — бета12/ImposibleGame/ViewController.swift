//
//  ViewController.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 20.05.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.





// Если вы смотрите мой проект, прошу не судить строго, это был самый большой проект который я делал, все остальные мелкие приложения, которые были заточены под определенные действия. Умею работать с autolayout, на момент когда создавалось это приложение, я не достиг этого дзена )



import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var igrat: UIButton!
    struct GlobalVar {
        static var bool = false 
    }
    
    var audioPlayr = AVAudioPlayer()
    struct music {
        static var bool_music = true
        static var bool_checkMusik = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let rez : String? = UserDefaults.standard.object(forKey: "topRes") as? String
        {
            if let gRes = rez
            {
                TestViewController.GlobalVar.top[0] = Double(gRes)!
            }
        }
        
        
        igrat.setTitle("Играть", for: .normal)
        do {
            audioPlayr = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath:  Bundle.main.path(forResource: "1", ofType: "wav")!))
            audioPlayr.prepareToPlay()
        }
        catch{
            print(error)
        }
       if ViewController.music.bool_checkMusik == false
       {
            audioPlayr.play()
            ViewController.music.bool_checkMusik = true
        }
        if ViewController.music.bool_music == true && ViewController.music.bool_checkMusik == false
        {
            audioPlayr.play()
            ViewController.music.bool_checkMusik = true
        }
        else if ViewController.music.bool_music == false
        {
            audioPlayr.stop()
            ViewController.music.bool_checkMusik = false
        }
 
        print(String(ViewController.music.bool_music))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func start_btn(_ sender: UIButton)
    {
        
    }
    
    @IBAction func IgratBtn(_ sender: UIButton)
    {
        if ViewController.GlobalVar.bool == false
        {
            igrat.setTitle("Пройди проверку скорости", for: .normal)
        }
        else if ViewController.GlobalVar.bool == true
        {
            performSegue(withIdentifier: "segueLvl1", sender: self)
        }
    }
    
    @IBAction func proverkaBtn(_ sender: UIButton)
    {
        performSegue(withIdentifier: "segueTest", sender: self)
        ViewController.GlobalVar.bool = true
    }
    
}
