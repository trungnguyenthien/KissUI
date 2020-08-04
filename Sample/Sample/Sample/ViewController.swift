//
//  ViewController.swift
//  Sample
//
//  Created by Trung on 7/26/20.
//  Copyright © 2020 trungnguyenthien. All rights reserved.
//

import UIKit
import UIBuilder

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let label = TextBuilder()
            .fontSize(15)
            .textColor(.red)
            .label()
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        label.text = "Hello world"
        view.addSubview(label)
    }


}

