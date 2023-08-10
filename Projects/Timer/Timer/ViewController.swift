//
//  ViewController.swift
//  Timer
//
//  Created by Tanya on 5.07.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerCountText: UILabel!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var stopBtn: UIButton!
    @IBOutlet weak var switcher: UISwitch!
    
    var timer: Timer?
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startBtn.addTarget(self, action: #selector(btnStart), for: .touchUpInside)
        stopBtn.addTarget(self, action: #selector(btnStop), for: .touchUpInside)
        
        updateCountText()
    }
    
    func updateCountText() {
        timerCountText.text = "\(count)"
    }
    
    @objc func timerSwitchOn() {
        count += 1
        updateCountText()
    }
    
    @objc func timerSwitchOf() {
        count -= 1
        updateCountText()
    }
    
    func timerOn() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerSwitchOn), userInfo: nil, repeats: true)
    }
    
    func timerOf() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerSwitchOf), userInfo: nil, repeats: true)
    }
    
    @IBAction func swithCountTimer(_ sender: UISwitch) {
        
        if sender.isOn {
            sender.isEnabled = false
            startBtn.isEnabled = false
            stopBtn.isEnabled = true
            
            timerOn()
            updateCountText()
        } else if !sender.isOn {
            startBtn.isEnabled = true
            stopBtn.isEnabled = false
            
            timerOf()
            updateCountText()
        }
    }
    
    @objc func btnStart() {
        switcher.isOn = true
        startBtn.isEnabled = false
        stopBtn.isEnabled = true
        timerOn()
        updateCountText()
    }
    
    @objc func btnStop() {
        switcher.isOn = false
        startBtn.isEnabled = true
        stopBtn.isEnabled = false
        timerOf()
        updateCountText()
    }
    
    
}

