//
//  UIButton+Touch+Extension.swift
//  UIBaseView
//
//  Created by Cao Phuoc Thanh on 4/25/20.
//  Copyright © 2020 Cao Phuoc Thanh. All rights reserved.
//

import UIKit

fileprivate class UIButtonAction {
    
    private var _action: () -> ()
    
    required init(_ target: Any, _ action: @escaping () -> ()) {
        self._action = action
        objc_setAssociatedObject(target, String(format: "[%d]", arc4random()), self, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
    }
    
    @objc dynamic func selector() {
        self._action()
    }
    
}

extension UIButton {
    
    open func touch(_ controlEvents: UIControl.Event, _ closure: @escaping () -> ()) {
        self.removeTarget(nil, action: #selector(UIButtonAction.selector), for: controlEvents)
        let action = UIButtonAction(self, closure)
        self.addTarget(action, action: #selector(UIButtonAction.selector), for: controlEvents)
    }
    
}


