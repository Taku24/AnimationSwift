//
//  ViewController.swift
//  AnimationSwift
//
//  Created by TAKU on 2016/08/31.
//  Copyright © 2016年 TAKU. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainView = MainView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //viewWillApper以降にアニメーションの処理を書く
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        moveImageView()
    }

}

// MARK: Animation

extension MainViewController {
    
    func moveImageView(){
        let moveToCenter = CABasicAnimation(keyPath: "position.x")
        
        //始点
        moveToCenter.fromValue = -view.frame.size.width/2
        
        //終点
        moveToCenter.toValue = view.frame.size.width/2
        
        //動く時間
        moveToCenter.duration = 2.0
        
        //imageView
        mainView.imageView.layer.addAnimation(moveToCenter, forKey: nil)
        
        //Label
        moveToCenter.beginTime = CACurrentMediaTime() + 0.5
        mainView.label.layer.addAnimation(moveToCenter, forKey: nil)
    }
    
}

