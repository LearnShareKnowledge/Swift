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
    
    
    var hydrationMeasurementView : HydrationMeasurementView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad() ;
        
        hydrationMeasurementView = HydrationMeasurementView(x:50 , y : 50 , width: 246, height: 246);
        
        self.view.addSubview(hydrationMeasurementView);
        
        onMeasuring(message: "Measuring moisture... ") ;
        
        let delay = DispatchTime.now() + .seconds(4);
        
        // use this to test the error scenario
        //DispatchQueue.main.asyncAfter(deadline: delay, execute:{
        //    self.onError(message: "We got an error") ;

        //});
        
        DispatchQueue.main.asyncAfter(deadline: delay, execute: {
            self.onSuccessReadOfHydration(message: "25%");
        })
        
        
    }
    
    func onMeasuring(message : String)
    {
        hydrationMeasurementView.setText(message: message )
        
        hydrationMeasurementView.animate( endAngle: 360 , timeDuration: 4) ;
    }
    
    func onError(message : String)
    {
        hydrationMeasurementView.setText(message: message )
        
        if(hydrationMeasurementView.circularProgressView.isAnimating())
        {
            hydrationMeasurementView.circularProgressView.stopAnimation() ;
        }

    }
    
    
    func onSuccessReadOfHydration(message : String)
    {
        hydrationMeasurementView.setText(message: message )
        
        if(hydrationMeasurementView.circularProgressView.isAnimating())
        {
            hydrationMeasurementView.circularProgressView.stopAnimation() ;
        }

    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
}

