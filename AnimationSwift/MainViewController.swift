//
//  ViewController.swift
//  AnimationSwift
//
//  Created by TAKU on 2016/08/31.
//  Copyright © 2016年 TAKU. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    

    override func loadView() {
        self.view = MainView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

