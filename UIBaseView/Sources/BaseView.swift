//
//  BaseView.swift
//  UIBaseView
//
//  Created by Cao Phuoc Thanh on 4/25/20.
//  Copyright © 2020 Cao Phuoc Thanh. All rights reserved.
//

import UIKit

open class BaseView: UIView, BaseViewProtocol {
    
    open func setupViews() { }

    open func setupComponents() { }
    
    open func setupConstraints() { }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.setupViews()
        self.setupComponents()
        self.setupConstraints()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open func draw(_ rect: CGRect) {
        super.draw(rect)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
}

// MARK: Set hide Keyboard When Tapped Around
extension BaseView {
    
    open func setHideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyBoard))
        tap.cancelsTouchesInView = false
        self.addGestureRecognizer(tap)
    }
    
    @objc dynamic private func hideKeyBoard() {
        self.endEditing(true)
    }
}
