//
//  UIView+Extension.swift
//  UIBaseView
//
//  Created by Cao Phuoc Thanh on 4/25/20.
//  Copyright © 2020 Cao Phuoc Thanh. All rights reserved.
//

import UIKit

extension UIView {
    
    open func addSubviews(_ views: UIView...) {
        for view in views {
            self.addSubview(view)
        }
    }
}
