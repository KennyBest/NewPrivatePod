//
//  GiftViewController.swift
//  NewPrivatePod
//
//  Created by Kede on 2018/12/18.
//  Copyright © 2018 clare. All rights reserved.
//

import UIKit

class GiftViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        view.addSubview(markLabel)
        view.addSubview(logoImageView)
    }
    

    lazy var markLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Gift Heaven"
        label.textColor = UIColor.purple
        label.sizeToFit()
        label.center = CGPoint(x: self.view.center.x, y: self.view.center.y - 200)
        return label
    }()
    
    lazy var logoImageView: UIImageView = {
        let _imageView = UIImageView(frame: .zero)
        _imageView.image = UIImage(named: "icon_weixin")
        _imageView.sizeToFit()
        _imageView.center = CGPoint(x: self.view.center.x, y: self.view.center.y - 170)
        return _imageView
    }()

}
