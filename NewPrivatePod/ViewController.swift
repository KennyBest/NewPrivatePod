//
//  ViewController.swift
//  NewPrivatePod
//
//  Created by Kede on 2018/12/17.
//  Copyright © 2018 clare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.title = "NewPrivatePod"
        
        view.backgroundColor = .cyan
        
        let button = UIButton(type: .system)
        button.setTitle("Present", for: .normal)
        button.addTarget(self, action: #selector(clickPresentButton), for: .touchUpInside)
        button.center = view.center
        button.sizeToFit()
        view.addSubview(button)
    }

    @objc func clickPresentButton() {
        let vc = LogcatViewController()
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func gotoScore(_ sender: Any) {
        let vc = ScoreViewController()
        vc.userName = "Clare"
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

