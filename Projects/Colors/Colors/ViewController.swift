//
//  ViewController.swift
//  Colors
//
//  Created by Tanya on 30.06.23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstValueText: UILabel!
    @IBOutlet weak var secondValueText: UILabel!
    @IBOutlet weak var thirdValueText: UILabel!
    
    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var firstSlider: UISlider!
    @IBOutlet weak var secondSlider: UISlider!
    @IBOutlet weak var thirdSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateValueSlider()
        updateColorView()
    }
    
    @IBAction func minValueBtn(_ sender: Any) {
        firstSlider.value = firstSlider.minimumValue
        secondSlider.value = secondSlider.minimumValue
        thirdSlider.value = thirdSlider.minimumValue
        updateValueSlider()
        updateColorView()
    }
    
    @IBAction func mediumValueBtn(_ sender: Any) {
        firstSlider.value = (firstSlider.maximumValue - firstSlider.minimumValue) / 2 + firstSlider.minimumValue
        secondSlider.value = (secondSlider.maximumValue - secondSlider.minimumValue) / 2 + secondSlider.minimumValue
        thirdSlider.value = (thirdSlider.maximumValue - thirdSlider.minimumValue) / 2 + thirdSlider.minimumValue
        updateValueSlider()
        updateColorView()
    }
    
    @IBAction func maxValueBtn(_ sender: Any) {
        firstSlider.value = firstSlider.maximumValue
        secondSlider.value = secondSlider.maximumValue
        thirdSlider.value = thirdSlider.maximumValue
        updateValueSlider()
        updateColorView()
    }
    
    func updateValueSlider() {
        firstValueText.text = "\(Int(firstSlider.value))"
        secondValueText.text = "\(Int(secondSlider.value))"
        thirdValueText.text = "\(Int(thirdSlider.value))"
    }
    
    @IBAction func sliderRedColor(_ sender: UISlider) {
        updateValueSlider()
        updateColorView()
    }
    
    @IBAction func sliderGreenColor(_ sender: UISlider) {
        updateValueSlider()
        updateColorView()
    }
    
    @IBAction func sliderBlueColor(_ sender: UISlider) {
        updateValueSlider()
        updateColorView()
    }
    
    func updateColorView() {
        viewColor.backgroundColor = UIColor.init(red: CGFloat((firstSlider.value)/255),
                                                 green: CGFloat((secondSlider.value)/255),
                                                 blue: CGFloat((thirdSlider.value)/255),
                                                 alpha: 1.0)
    }
}

