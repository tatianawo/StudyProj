//
//  ViewController.swift
//  Colorizer
//
//  Created by Tanya on 5.07.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textCount: UILabel!
    @IBOutlet var background: UIView!
    
    var count = 5
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTextCount()
        textCount.isHidden = true
    }
    
    func updateTextCount(){
        textCount.text = "\(count)"
    }
    
    @objc func countTimer() {
        count -= 1
        updateTextCount()
        if count == -1 {
            textCount.isHidden = true
            background.backgroundColor = UIColor.white
        }
    }
    
    func timerChangeColor() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countTimer), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func btnRed(_ sender: Any) {
        count = 5
        updateTextCount()
        textCount.isHidden = false
        background.backgroundColor = UIColor.red
        timerChangeColor()
        
        
    }
    
    @IBAction func btnBlue(_ sender: Any) {
        count = 5
        updateTextCount()
        textCount.isHidden = false
        background.backgroundColor = UIColor.blue
        timerChangeColor()
        
    }
    
    @IBAction func btnGreen(_ sender: Any) {
        count = 5
        updateTextCount()
        textCount.isHidden = false
        background.backgroundColor = UIColor.green
        timerChangeColor()
    }
    
    
}

