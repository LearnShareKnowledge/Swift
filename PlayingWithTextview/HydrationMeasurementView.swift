//
//  HydrationMeasurementView.swift
//  PlayingWithTextview
//
//  Created by anukool.tiwari@philips.com on 05/06/17.
//  Copyright © 2017 anukool.tiwari@philips.com. All rights reserved.
//

import UIKit

import KDCircularProgress


public class HydrationMeasurementView: UIView {
    
    var circularProgressView : KDCircularProgress! ;
    
    var messageView : UILabel! ;
    
    let fontSizeForMessage : CGFloat = 21 ;
    
    let trackThickness : CGFloat = 0.12 ;
    
    let startAngle : Double = 90 ;
    
    let trackColor : UIColor = UIColor(red:193/255,green:228/255,blue:230/255,alpha:1.0) ;
    
    let progressColorStart = UIColor(red: 91/255 , green : 187/255 , blue : 183/255 , alpha : 1.0 ) ;
    
    let progressColorEnd = UIColor(red:20/255,green:130/255,blue:118/255, alpha:1.0) ;
    
    let progressBackgroundColor = UIColor(red:1.0 , green : 1.0 , blue : 1.0 , alpha : 1.0) ;
    
    public init(x : Int , y : Int , width : Int , height : Int)
    {
        super.init(frame : CGRect(x: x, y: y, width: width, height: height));
        
        intializeCircularProgressBar(width:width , height : height);
        
        intializeMessageView(width: width, height: height) ;
        
        self.addSubview(circularProgressView) ;
        
        self.addSubview(messageView) ;
        
    
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder) ;
    }
    
    
    func intializeCircularProgressBar(width : Int , height : Int)
    {
        circularProgressView = KDCircularProgress(frame: CGRect(x: 0, y: 0, width: width, height: height)) ;
        
        circularProgressView.backgroundColor = progressBackgroundColor ;
        
        circularProgressView.trackThickness = trackThickness ;
        
        circularProgressView.progressThickness = trackThickness ;
        
        circularProgressView.startAngle = startAngle ;
        
        circularProgressView.trackColor = trackColor ;
        
        circularProgressView.progressColors = [progressColorStart,progressColorEnd ] ;
        
    }

    func intializeMessageView(width : Int , height : Int)->Void
    {
        messageView = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: height)) ;
        
        messageView.textAlignment = NSTextAlignment.center ;
        
        messageView.textColor = UIColor.black ;
        
        messageView.numberOfLines = 0 ;
        
        messageView.font = UIFont(name:messageView.font.fontName,size:fontSizeForMessage) ;
        
        messageView.backgroundColor = UIColor.clear ;
    }

    
    func setText(message : String)->Void
    {
        messageView.text = message ;
    }

    
    func fadeOutWithAnimation(timeDuration : Double)->Void
    {
        UIView.animate(withDuration: timeDuration, animations: {
            self.alpha = 0.0
        }, completion: nil)
    }
    
    public func getText()->String
    {
        return messageView.text! ;
    }
    
    func animate(endAngle : Double , timeDuration : Double)->Void
    {
        circularProgressView.animate(toAngle: endAngle, duration: timeDuration, completion: {
            completed in
                self.fadeOutWithAnimation(timeDuration: 2.0)
            })
    }
}
