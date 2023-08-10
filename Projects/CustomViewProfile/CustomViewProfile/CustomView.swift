//
//  CustomView.swift
//  CustomViewProfile
//
//  Created by Tanya on 25.07.23.
//

import UIKit

class CustomView: UIView {
    
    let textLable = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    private func setupUI() {
        backgroundColor = .lightGray
        
        textLable.text = "test"
        textLable.frame = CGRect(x: 0, y: 0,
                             width: self.bounds.width,
                             height: self.bounds.height * 0.5)
        textLable.textAlignment = .center
        self.addSubview(textLable)
        
        let blueView = UIView()
        let width = self.bounds.width * 0.1
        blueView.backgroundColor = .blue
        blueView.frame = CGRect(x: (self.bounds.width - width) * 0.5,
                                y: self.bounds.height * 0.5,
                                width: width,
                                height: width)
        addSubview(blueView)
    }
}
