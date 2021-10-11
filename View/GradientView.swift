//
//  GradientView.swift
//  test
//
//  Created by Yassin Charif on 11/10/2021.
//

import UIKit

class GradientView: UIView{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let color1 = UIColor(red: 116/255, green: 235/255, blue: 213/255, alpha: 0.5)
        let color2 = UIColor(red: 172/255, green: 182/255, blue: 229/255, alpha: 0.5)
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [color2.cgColor, color1.cgColor]
        layer.addSublayer(gradient)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
