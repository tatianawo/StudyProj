//
//  Result.swift
//  GameClicker
//
//  Created by Tanya on 14.07.23.
//

import UIKit

class Result: UIViewController {
    @IBOutlet weak var resultScoreLable: UILabel!
    
    var value: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultScoreLable.text = "\(Int(value ?? 0))"
    }
    

  
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//        }
//    }

}
