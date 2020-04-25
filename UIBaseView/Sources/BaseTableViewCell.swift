//
//  BaseTableViewCell.swift
//  UIBaseView
//
//  Created by Cao Phuoc Thanh on 4/25/20.
//  Copyright © 2020 Cao Phuoc Thanh. All rights reserved.
//

import UIKit

open class BaseTableViewCell: UITableViewCell, BaseViewProtocol {
    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        self.selectedBackgroundView = nil
        self.backgroundView = nil
        self.selectionStyle = .none
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

extension BaseTableViewCell {
    
    open func reuseIdentifier() -> String {
        return String(describing: type(of: (self) as AnyObject)).components(separatedBy: "__").last!
    }
    
}


