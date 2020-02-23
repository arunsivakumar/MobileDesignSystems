//
//  ViewController.swift
//  MobileDesignSystems
//
//  Created by Arun Sivakumar on 23/2/20.
//  Copyright © 2020 Arun Sivakumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        label1.font(style: .body)
        label2.font(style: .caption)
        label3.font(style: .headline)
        label4.font(style: .subtitle)
        label5.font(style: .title)
        
        //TODO: adjust for dynamic type
        
        button1.titleLabel?.font(style: .title)
        button1.backgroundColor = .custom(.clblue)
        button1.setTitleColor(.custom(.clwhite), for: .normal)
    }
   
}


