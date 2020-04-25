//
//  BaseCollectionViewCell.swift
//  UIBaseView
//
//  Created by Cao Phuoc Thanh on 4/25/20.
//  Copyright © 2020 Cao Phuoc Thanh. All rights reserved.
//

import UIKit

open class BaseCollectionViewCell: UICollectionViewCell, BaseViewProtocol {
    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.backgroundColor = UIColor.clear
        self.setupViews()
        self.setupComponents()
        self.setupConstraints()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
        self.setupViews()
        self.setupComponents()
        self.setupConstraints()
    }
    
    open func setupViews() {
        
    }
    
    open func setupComponents() {
        
    }
    
    open func setupConstraints() {
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
}

// MARK: - BaseCollectionViewCell Utils

extension BaseCollectionViewCell {
    
    open func reuseIdentifier() -> String {
        return String(describing: type(of: (self) as AnyObject)).components(separatedBy: "__").last!
    }
    
}
