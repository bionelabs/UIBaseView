//
//  UIImageView+Animation+Extension.swift
//  UIBaseView
//
//  Created by Cao Phuoc Thanh on 4/25/20.
//  Copyright © 2020 Cao Phuoc Thanh. All rights reserved.
//

import UIKit

extension UIImageView {
    
    public convenience init(string: String, frameCount: Int) {
        self.init()
        self.contentMode = .scaleAspectFit
        var imgListArray :[UIImage] = []
        for countValue in 1...frameCount {
            let strImageName : String = "\(string)\(countValue)"
            if let image  = UIImage(named:strImageName) {
                imgListArray.append(image)
            }
        }
        self.animationImages = imgListArray
    }

}
