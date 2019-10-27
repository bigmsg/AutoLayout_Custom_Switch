//
//  ViewController.swift
//  AutoLayout_Custom_Switch
//
//  Created by 양팀장 on 2019. 10. 27..
//  Copyright © 2019년 양팀장. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonCenterX: NSLayoutConstraint!
    @IBOutlet weak var switchBtn: UIButton!
    @IBOutlet weak var switchBG: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switchBG.layer.cornerRadius = 25
        switchBtn.layer.cornerRadius = 25
        print(switchBG.layer)
        
        
        
        /*
            그림그리기 테스트 소스
         */
        let blueView = UIView()
        blueView.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        blueView.backgroundColor = UIColor.blue
        view.addSubview(blueView)
        
        blueView.layer.cornerRadius = 5
        
    
    
        
        /*let mySubView = UIView()
        mySubView.frame = CGRect(x: 20, y: 20, width: 100, height: 100)
        mySubView.backgroundColor = UIColor.red
        blueView.addSubview(mySubView)
        */
        //blueView.clipsToBounds = true
        
        let mySubLayer = CALayer()
        mySubLayer.frame = CGRect(x: 20, y: 20, width: 100, height: 100)
        mySubLayer.backgroundColor = UIColor.red.cgColor
        blueView.layer.addSublayer(mySubLayer)
        
        blueView.layer.masksToBounds = true
        
        // end 그림그리기 테스트 소스
        
        
        
        
        
        
    }

    @IBAction func selectedButton(_ sender: Any) {
        if buttonCenterX.constant == 75 {
            buttonCenterX.constant = -75
            switchBG.backgroundColor = UIColor.lightGray
            
        } else {
            buttonCenterX.constant = 75
            switchBG.backgroundColor = UIColor.yellow
        }
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
}

