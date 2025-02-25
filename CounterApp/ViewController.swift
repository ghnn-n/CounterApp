//
//  ViewController.swift
//  CounterApp
//
//  Created by 최규현 on 2/25/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var numberLabel: UILabel!
        
    var num = 0
    
    func clickButton() {
        numberLabel.text = String(num)
        
        minusBtn.isEnabled = num > -10
        plusBtn.isEnabled = num < 10
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func resetButton(_ sender: Any) {
        num = 0
        clickButton()
        
//        numberLabel.text = String(num)
//        plusBtn.isEnabled = true
//        minusBtn.isEnabled = true
    }
    
    @IBAction func plusButton(_ sender: Any) {
        num += 1
        clickButton()
        
//        if num >= 10 {
//            plusBtn.isEnabled = false
//            numberLabel.text = String(num)
//        } else {
//            numberLabel.text = String(num)
//        }
//        
//        if !minusBtn.isEnabled {
//            minusBtn.isEnabled = true
//        }
    }
    
    @IBAction func minusButton(_ sender: Any) {
        num -= 1
        clickButton()
        
//        if num <= -10 {
//            minusBtn.isEnabled = false
//            numberLabel.text = String(num)
//        } else {
//            numberLabel.text = String(num)
//        }
//        
//        if !plusBtn.isEnabled {
//            plusBtn.isEnabled = true
//        }
    }
}

