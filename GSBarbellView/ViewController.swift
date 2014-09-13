//
//  ViewController.swift
//  GSBarbellView
//
//  Created by Gianni Settino on 2014-09-13.
//  Copyright (c) 2014 Milton and Parc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var barbellView: GSBarbellView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        barbellView = GSBarbellView(frame: view.frame)
        barbellView.setWeight(225)
        
        view.addSubview(barbellView)
    }

}

