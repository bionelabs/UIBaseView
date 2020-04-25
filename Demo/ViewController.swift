//
//  ViewController.swift
//  Demo
//
//  Created by Cao Phuoc Thanh on 4/25/20.
//  Copyright © 2020 Cao Phuoc Thanh. All rights reserved.
//

import UIKit
import UIBaseView


class View: BaseView {
    
    override func setupViews() {
        self.backgroundColor = UIColor.red
        self.setHideKeyboardWhenTappedAround()
    }
    
    override func setupComponents() {
        //
    }
    
    override func setupConstraints() {
        //
    }
}


class ViewController: UIViewController {
    
    let view0: View = {
        let view = View()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func loadView() {
        super.loadView()
        self.view.addSubviews(view0)
        
        self.view.visual.anchor([.horizontal,.vertical], for: view0, padding: 100)
        
        
        let assa = BaseCollectionViewCell()
        assa.reuseIdentifier
        assa.s
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.view0.fadeOut(1)
        }
        
    }


}

