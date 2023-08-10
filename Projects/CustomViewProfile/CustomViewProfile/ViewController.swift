//
//  ViewController.swift
//  CustomViewProfile
//
//  Created by Tanya on 25.07.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let rect = CGRect(x: 100, y: 100, width: 100, height: 100)
//        let testView = UIView(frame: rect)
//        testView.backgroundColor = .darkGray
//        testView.clipsToBounds = true
//        view.addSubview(testView)
//
//        let rect2 = CGRect(x: 50, y: 50, width: 200, height: 200)
//        let testView2 = UIView(frame: rect2)
//        testView2.backgroundColor = .magenta
//        testView.addSubview(testView2)
//
//        let rect3 = CGRect(x: 150, y: 400, width: 50, height: 50)
//        let testView3 = UIView(frame: rect3)
//        testView3.backgroundColor = .opaqueSeparator
//        view.addSubview(testView3)
        
        let rect = CGRect(x: 100, y: 200, width: 200, height: 100)
        let customView = CustomView(frame: rect)
        customView.textLable.text = "First custom view"
        
        view.addSubview(customView)
        
        let rect2 = CGRect(x: 50, y: 400, width: 400, height: 300)
        let customView2 = CustomView(frame: rect2)
        customView2.textLable.text = "Second custom view"
        
        view.addSubview(customView2)
        
    }


}

