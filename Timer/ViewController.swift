//
//  ViewController.swift
//  Timer
//
//  Created by Chukwuemeka Jennifer on 08/09/2020.
//  Copyright © 2020 Chukwuemeka Jennifer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var countDown = 20
    var timer = Timer()
    @IBOutlet weak var countDownLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countDownLabel.text = "\(countDown)"
    
        

    
    }

    @IBAction func startCountDown(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDownMethod), userInfo: nil, repeats: true)
    }
    @objc func countDownMethod() {
        if countDown == 0 {
            timer.invalidate()
            return
            
        }
        countDown -= 1
        countDownLabel.text = "\(countDown)"
        
    }
    
}

