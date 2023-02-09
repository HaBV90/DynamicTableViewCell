//
//  CustomButton.swift
//  DynamicTableViewCell
//
//  Created by HaBV on 08/02/2023.
//

import UIKit

class CustomButton: UIButton {
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupButton()
  }

  required init?(coder: NSCoder) {
    super.init(coder: coder)
    setupButton()
  }
  
  func setupButton() {
    setShadow()
  }
  
  override func layoutSubviews() {
    
  }
  
  func buttonStyle() {
    setTitleColor(.white, for: .normal)
    setTitle("Button", for: .normal)
    backgroundColor = UIColor.systemBlue
    titleLabel?.font = UIFont.systemFont(ofSize: 18)
    layer.cornerRadius = 8
    layer.borderWidth = 1
    layer.borderColor = UIColor.darkGray.cgColor
  }
  
  private func setShadow() {
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
    layer.shadowRadius = 8
    layer.shadowOpacity = 0.5
    layer.masksToBounds = false
    clipsToBounds = true
  }
  
  func shake() {
    let shake = CABasicAnimation(keyPath: "position")
    shake.duration = 0.1
    shake.repeatCount = 2
    shake.autoreverses = true
    
    let fromPoint = CGPoint(x: center.x - 8, y: center.y)
    let fromValue = NSValue(cgPoint: fromPoint)
    
    let toPoint = CGPoint(x: center.x + 8, y: center.y)
    let toValue = NSValue(cgPoint: toPoint)
    
    shake.fromValue = fromValue
    shake.toValue = toValue
    
    layer.add(shake, forKey: "position")
  }
  
}

extension UIButton.Configuration {
  public static func outline() -> UIButton.Configuration {
          var style = UIButton.Configuration.plain()
          var background = UIButton.Configuration.plain().background
          background.cornerRadius = 20
          background.strokeWidth = 1
          background.strokeColor = UIColor.systemGray5
          style.background = background
          
          return style
      }
}
