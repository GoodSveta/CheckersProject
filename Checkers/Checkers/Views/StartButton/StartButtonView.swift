//
//  StartButtonView.swift
//  Checkers
//
//  Created by mac on 13.02.22.
//

import UIKit
@IBDesignable
class StartButtonView: UIView {

    @IBOutlet var contentView: UIView!
  
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var imageButton: UIImageView!
    @IBInspectable var cornerRadius: CGFloat {
        set { contentView.layer.cornerRadius = newValue }
        get { return contentView.layer.cornerRadius }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        set { contentView.layer.borderWidth = newValue }
        get { return contentView.layer.borderWidth }
    }
    @IBInspectable var bgColor: UIColor {
        set { contentView.backgroundColor = newValue }
        get { return contentView.backgroundColor ?? .clear }
    }
 
    @IBInspectable var borderColor: UIColor {
        set { contentView.layer.borderColor = newValue.cgColor }
        get { if let borderColor = contentView.layer.borderColor {
            return UIColor(cgColor: borderColor)
        }
            return UIColor.clear
    }
    }
    
    @IBInspectable var text: String {
        set { textLabel.text = newValue }
        get { return textLabel.text ?? ""}
    }
    
    @IBInspectable var isAnimatable: Bool {
        set { isAnimatable_ = newValue }
        get { return isAnimatable_}
    }
    private var isAnimatable_: Bool = true
    private var animation: CABasicAnimation?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if isAnimatable_ {
        setAnimation()
    }
}
    
    private func setAnimation() {
        animation = CABasicAnimation(keyPath: "transform.translation.x")
        animation?.toValue = textLabel.frame.origin.x - imageButton.frame.origin.x - imageButton.frame.size.width - 2
        animation?.autoreverses = true
        animation?.repeatCount = .infinity
        animation?.fillMode = .both
        animation?.duration = 2.0
        animation?.beginTime = CACurrentMediaTime()
        animation?.timingFunction = .easeOut
        if let animation = animation {
           imageButton.layer.add(animation, forKey: animation.description)
        }
        
    }
    private func setupUI() {
        Bundle(for: StartButtonView.self).loadNibNamed("StartButtonView", owner: self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
    }
}


