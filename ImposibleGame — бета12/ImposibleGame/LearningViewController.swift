//
//  LearningViewController.swift
//  ImposibleGame
//
//  Created by Умид Халилов on 29.05.2018.
//  Copyright © 2018 Умид Халилов. All rights reserved.
//

import UIKit

class LearningViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var DelLearn: UIButton!
    
    
    var contentWight: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for image in 1...4
        {
            let imageToDisplay = UIImage(named: "\(image).png")
            let imageView = UIImageView(image: imageToDisplay)
            
            let xCordinate = view.frame.midX + view.frame.width * CGFloat(image)
            contentWight += view.frame.width
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: xCordinate - 100,  y: (view.frame.height / 2) - 50, width: 200, height: 200)
            if image == 4
            {
                DelLearn.setTitle("Перейти в меню", for: .normal)
            }
            else
            {
                DelLearn.setTitle("Пропустить обучение!", for: .normal)
            }
        }
        scrollView.contentSize = CGSize(width: contentWight, height: view.frame.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func DelLearnbtn(_ sender: Any)
    {
        
    }
    
    
 

}
