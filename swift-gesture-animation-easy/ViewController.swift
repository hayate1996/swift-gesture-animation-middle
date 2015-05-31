//
//  ViewController.swift
//  swift-gesture-animation-easy
//
//  Created by Hiromasa Nagamine on 5/31/15.
//  Copyright (c) 2015 hiro nagami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var frame1: UIView!
    var frame2: UIView!
    var rect:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configureViews()
        configureGestures()
    }

    func configureViews()
    {
        frame1 = UIView(frame: CGRectMake(0, 0, 80, 80))
        frame1.layer.borderColor = UIColor.lightGrayColor().CGColor
        frame1.layer.borderWidth = 1.0
        frame1.center = CGPointMake(self.view.center.x - 50, self.view.center.y)
        
        frame2 = UIView(frame: CGRectMake(0, 0, 80, 80))
        frame2.layer.borderColor = UIColor.lightGrayColor().CGColor
        frame2.layer.borderWidth = 1.0
        frame2.center = CGPointMake(self.view.center.x + 50, self.view.center.y)
        
        rect = UIView(frame: CGRectMake(0, 0, 75, 75))
        rect.backgroundColor = UIColor.blueColor()
        rect.center = frame1.center
        
        self.view.addSubview(frame1)
        self.view.addSubview(frame2)
        self.view.addSubview(rect)
    }
    
    func configureGestures()
    {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

