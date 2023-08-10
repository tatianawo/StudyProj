//
//  Game.swift
//  GameClicker
//
//  Created by Tanya on 14.07.23.
//

import UIKit

class Game: UIViewController {
    @IBOutlet weak var scoreOfTheGame: UILabel!
    @IBOutlet weak var timerCountLable: UILabel!
    
    var timer: Timer?
    var counterTimer = 5
    var counterScore = 0
    
    @IBOutlet weak var firstBtnTap: UIButton!
    @IBOutlet weak var secondBtnTap: UIButton!
    @IBOutlet weak var thirdBtnTap: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewBtnRandom()
        timerOn()
        updateTimerText()
    }
    
    func timerOn() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self,
                                     selector: #selector(timerLableOn),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc func timerLableOn() {
        counterTimer -= 1
        updateTimerText()
        gameOver()
    }
    
    func updateTimerText() {
        timerCountLable.text = "\(counterTimer)"
    }
    
    func gameOver() {
        if counterTimer == 0 {
            performSegue(withIdentifier: "showResult", sender: nil)
        }
    }
    
    
    
    func updateTextOfCounter () {
        scoreOfTheGame.text = "\(counterScore)"
    }
    
    func viewBtnRandom() {
        firstBtnTap.isHidden = true
        secondBtnTap.isHidden = true
        thirdBtnTap.isHidden = true
        
        let btns = [firstBtnTap, secondBtnTap, thirdBtnTap]
        if let btn = btns.randomElement() {
            btn?.isHidden = false
        }
    }
    
    @IBAction func FirstBtn(_ sender: Any) {
        firstBtnTap.isHidden = true
        counterScore += 1
        updateTextOfCounter()
        viewBtnRandom()
        
    }

    @IBAction func SecondBtn(_ sender: Any) {
        secondBtnTap.isHidden = true
        counterScore += 1
        updateTextOfCounter()
        viewBtnRandom()
    }

    @IBAction func ThirdBtn(_ sender: Any) {
        thirdBtnTap.isHidden = true
        counterScore += 1
        updateTextOfCounter()
        viewBtnRandom()
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult" {
            if let destVC = segue.destination as? Result {
                destVC.value = Int(counterScore)
            }
        }
    }
    

}
