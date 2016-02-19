//
//  ViewController.swift
//  ProgrammaticAutoLayoutMini
//
//  Created by Jordan Nelson on 10/30/15.
//  Copyright © 2015 Jordan Nelson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createButton()
    }

    
    func createButton() {
    
        button.setTitle("Apply Now", forState: UIControlState.Normal)
        button.backgroundColor = UIColor(patternImage: UIImage(named: "BlueDevButton")!)
        button.layer.cornerRadius = 8
        button.layer.borderColor = UIColor.blueColor().CGColor
        button.layer.borderWidth = 2.0
        self.view.addSubview(button)
        addButtonContstraints()
    }
    
    func addButtonContstraints() {
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontalConstraint = NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0)
        
        view.addConstraint(horizontalConstraint)
        
        let verticalConstraint = NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0)
        
        view.addConstraint(verticalConstraint)
        
        let widthConstraint = NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: 0.75, constant: 0)
        view.addConstraint(widthConstraint)
        
        let heightConstraint = NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 100)
        
        view.addConstraint(heightConstraint)
    }
    
    
    
    
    
    
    
    

}

