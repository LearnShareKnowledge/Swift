//
//  ViewController.swift
//  PlayingWithTextview
//
//  Created by anukool.tiwari@philips.com on 05/06/17.
//  Copyright © 2017 anukool.tiwari@philips.com. All rights reserved.
//

import UIKit

import KDCircularProgress

class ViewController: UIViewController {
    
    var tvTextView : UITextView!
    
    var hydrationMeasurementView : KDCircularProgress!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad() ;
        
        tvTextView = UITextView(frame: CGRect(x: 0, y: 0, width: 300, height: 300)) ;
        
        tvTextView.center = self.view.center ;
        
        tvTextView.backgroundColor = UIColor.gray ;
        
        tvTextView.textColor = UIColor.white ;
        
        tvTextView.text = "Hello , i have been added dynamically"
        
        tvTextView.font = UIFont.boldSystemFont(ofSize: 20) ;
        
        tvTextView.textAlignment = .justified ;
        
        self.view.addSubview(tvTextView) ;
        
        //initialize the circular progress bar 
        
        hydrationMeasurementView = KDCircularProgress(frame: CGRect(x :0 ,y : 0, width : 300 , height : 300)) ;
        
        hydrationMeasurementView.center = self.view.center ;
        
        hydrationMeasurementView.trackThickness = 0.2 ;
        
        hydrationMeasurementView.trackColor = UIColor(red : 1.0 , green : 1.0 , blue : 1.0 , alpha : 1.0) ;
        
        self.view.addSubview(hydrationMeasurementView) ;
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

