//
//  ViewController.swift
//  swift-gesture-animation-easy
//
//  Created by Hiromasa Nagamine on 5/31/15.
//  Copyright (c) 2015 hiro nagami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var leftUpFrame: UIView!
    var rightUpFrame: UIView!
    var leftDownFrame: UIView!
    var rightDownFrame: UIView!
    var rect:UIView!
    let duration: NSTimeInterval = 0.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configureViews()
        configureGestures()
    }

    func configureViews()
    {
        leftUpFrame = UIView(frame: CGRectMake(0, 0, 80, 80))
        leftUpFrame.layer.borderColor = UIColor.lightGrayColor().CGColor
        leftUpFrame.layer.borderWidth = 1.0
        leftUpFrame.center = CGPointMake(self.view.center.x - 100, self.view.center.y - 100)
        
        rightUpFrame = UIView(frame: CGRectMake(0, 0, 80, 80))
        rightUpFrame.layer.borderColor = UIColor.lightGrayColor().CGColor
        rightUpFrame.layer.borderWidth = 1.0
        rightUpFrame.center = CGPointMake(self.view.center.x + 100, self.view.center.y - 100)
        
        leftDownFrame = UIView(frame: CGRectMake(0, 0, 80, 80))
        leftDownFrame.layer.borderColor = UIColor.lightGrayColor().CGColor
        leftDownFrame.layer.borderWidth = 1.0
        leftDownFrame.center = CGPointMake(self.view.center.x - 100, self.view.center.y + 100)
        
        rightDownFrame = UIView(frame: CGRectMake(0, 0, 80, 80))
        rightDownFrame.layer.borderColor = UIColor.lightGrayColor().CGColor
        rightDownFrame.layer.borderWidth = 1.0
        rightDownFrame.center = CGPointMake(self.view.center.x + 100, self.view.center.y + 100)
        
        
        rect = UIView(frame: CGRectMake(0, 0, 75, 75))
        rect.backgroundColor = UIColor.blueColor()
        rect.center = leftUpFrame.center
        
        self.view.addSubview(leftUpFrame)
        self.view.addSubview(rightUpFrame)
        self.view.addSubview(leftDownFrame)
        self.view.addSubview(rightDownFrame)
        self.view.addSubview(rect)
    }
    
    func configureGestures()
    {
        var swipeGestureRecognizerRight = UISwipeGestureRecognizer(target: self, action: Selector("callSwipeRightAnimation"))
        swipeGestureRecognizerRight.direction = .Right
        rect.addGestureRecognizer(swipeGestureRecognizerRight)
    }
    
    func callSwipeRightAnimation()
    {
        UIView.animateWithDuration(duration, animations: { () -> Void in
            if self.rect.center == self.leftUpFrame.center {
                self.rect.center = self.rightUpFrame.center
            }
            else if self.rect.center == self.leftDownFrame.center {
                self.rect.center = self.rightDownFrame.center
            }
        })
    }
    
    func callSwipeLeftAnimation()
    {
    
    }
    
    
    func callSwipeUpAnimation()
    {
        
    }
    
    func callSwipeDownAnimation()
    {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

