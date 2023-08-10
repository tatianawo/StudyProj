//
//  ViewController.swift
//  Selecters
//
//  Created by Tanya on 5.07.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textCount: UILabel!
    var count = 0
    @IBOutlet weak var btnPress: UIButton!
    
    @IBOutlet weak var timerCountText: UILabel!
    var timerCount = 0
    var timer: Timer?
    @IBOutlet weak var startTimerBtn: UIButton!
    @IBOutlet weak var stopTimerBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countText()
        updateCountTimer()
        
        btnPress.addTarget(self, action: #selector(countBtnPress(_:)), for: .touchUpInside)
        
//        startTimerBtn.addTarget(self, action: #selector(startPress), for: .touchUpInside)
//        stopTimerBtn.addTarget(self, action: #selector(stopPress), for: .touchUpInside)
    }
    
    @objc func countBtnPress(_ sender: UIButton) {
        count += 1
        countText()
    }
    
    func countText() {
        textCount.text = "\(count)"
    }

    @objc func timerTickBtn() {
        print("Its worked")
        timerCount += 1
        updateCountTimer()
    }
    
    func updateCountTimer() {
        timerCountText.text = "Count: \(timerCount)"
    }
    
    
    @IBAction func startPress(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerTickBtn), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopPress(_ sender: Any) {
        timer?.invalidate()
        timer = nil
        timerCount = 0
        updateCountTimer()
    }
    
//    @objc func startPress() {
//        timer = Timer(timeInterval: 1, target: self, selector: #selector(timerTickBtn), userInfo: nil, repeats: true)
//    }
//
//    @objc func stopPress() {
//        timer?.invalidate()
//        timer = nil
//    }
}

