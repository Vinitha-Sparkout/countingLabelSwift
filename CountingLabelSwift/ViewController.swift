//
//  ViewController.swift
//  CountingLabelSwift
//
//  Created by Vinitha on 29/01/19.
//  Copyright © 2019 Vinitha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCounting: countingLabel!
   
    @IBOutlet weak var BtnReset: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblCounting.startValue = 0
        lblCounting.endValue = 10000
        lblCounting.animationDuration = 3.5
        lblCounting.startCounting()

    }
    
    @IBAction func btnResetPressed(_ sender: Any) {
          lblCounting.startCounting()
    }
    
    override func viewDidAppear(_ animated: Bool) {

    }
    
}

