//
//  Menu.swift
//  GameClicker
//
//  Created by Tanya on 14.07.23.
//

import UIKit

class Menu: UIViewController {
    @IBOutlet weak var valueScoreFirstScreen: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToFirstScreen (_ segue: UIStoryboardSegue) {
        if let secondVC = segue.source as? Game {
            valueScoreFirstScreen.text = "\(secondVC.counterScore)"
        } else if let secVC = segue.source as? Result {
            valueScoreFirstScreen.text = "\(Int(secVC.value ?? 0))"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
