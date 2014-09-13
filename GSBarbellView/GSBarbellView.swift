//
//  GSBarbellView.swift
//  GSBarbellView
//
//  Created by Gianni Settino on 2014-09-13.
//  Copyright (c) 2014 Milton and Parc. All rights reserved.
//

import UIKit

class GSBarbellView: UIView {
    
    let padding: CGFloat = 10
    
    var barbellView = UIView()
    let barbellHeight: CGFloat = 10
    
    var plate1LView = UIView()
    var plate2LView = UIView()
    var plate3LView = UIView()
    var plate4LView = UIView()
    var plate5LView = UIView()
    var plate6LView = UIView()
    var plate7LView = UIView()
    var plate8LView = UIView()
    
    var plate1RView = UIView()
    var plate2RView = UIView()
    var plate3RView = UIView()
    var plate4RView = UIView()
    var plate5RView = UIView()
    var plate6RView = UIView()
    var plate7RView = UIView()
    var plate8RView = UIView()
    
    let plateWidth: CGFloat = 10
    let plateHeight: CGFloat = 100
    let plateSpacing: CGFloat = 1
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        barbellView.backgroundColor = UIColor.lightGrayColor()
        addSubview(barbellView)
        
        addSubview(plate1LView)
        addSubview(plate2LView)
        addSubview(plate3LView)
        addSubview(plate4LView)
        addSubview(plate5LView)
        addSubview(plate6LView)
        addSubview(plate7LView)
        addSubview(plate8LView)
        
        addSubview(plate1RView)
        addSubview(plate2RView)
        addSubview(plate3RView)
        addSubview(plate4RView)
        addSubview(plate5RView)
        addSubview(plate6RView)
        addSubview(plate7RView)
        addSubview(plate8RView)
    }
    
    override func layoutSubviews() {
        barbellView.frame = CGRect(x: padding, y: 0, width: frame.width-(2*padding), height: barbellHeight)
        barbellView.center.y = center.y
        
        // LEFT SIDE OF THE BARBELL
        
        plate8LView.frame = CGRect(x: xPositionForPlateNumber(1), y: 0, width: plateWidth, height: plateHeight)
        plate8LView.backgroundColor = UIColor.blueColor()
        plate8LView.center.y = center.y
        
        plate7LView.frame = CGRect(x: xPositionForPlateNumber(2), y: 0, width: plateWidth, height: plateHeight)
        plate7LView.backgroundColor = UIColor.blueColor()
        plate7LView.center.y = center.y
        
        plate6LView.frame = CGRect(x: xPositionForPlateNumber(3), y: 0, width: plateWidth, height: plateHeight)
        plate6LView.backgroundColor = UIColor.blueColor()
        plate6LView.center.y = center.y
        
        plate5LView.frame = CGRect(x: xPositionForPlateNumber(4), y: 0, width: plateWidth, height: plateHeight)
        plate5LView.backgroundColor = UIColor.blueColor()
        plate5LView.center.y = center.y
        
        plate4LView.frame = CGRect(x: xPositionForPlateNumber(5), y: 0, width: plateWidth, height: plateHeight)
        plate4LView.backgroundColor = UIColor.blueColor()
        plate4LView.center.y = center.y
        
        plate3LView.frame = CGRect(x: xPositionForPlateNumber(6), y: 0, width: plateWidth, height: plateHeight)
        plate3LView.backgroundColor = UIColor.blueColor()
        plate3LView.center.y = center.y
        
        plate2LView.frame = CGRect(x: xPositionForPlateNumber(7), y: 0, width: plateWidth, height: plateHeight)
        plate2LView.backgroundColor = UIColor.blueColor()
        plate2LView.center.y = center.y
        
        plate1LView.frame = CGRect(x: xPositionForPlateNumber(8), y: 0, width: plateWidth, height: plateHeight)
        plate1LView.backgroundColor = UIColor.blueColor()
        plate1LView.center.y = center.y
        
        // RIGHT SIDE OF THE BARBELL
        
        plate8RView.frame = CGRect(x: frame.width-xPositionForPlateNumber(1)-plateWidth, y: 0, width: plateWidth, height: plateHeight)
        plate8RView.backgroundColor = UIColor.blueColor()
        plate8RView.center.y = center.y
        
        plate7RView.frame = CGRect(x: frame.width-xPositionForPlateNumber(2)-plateWidth, y: 0, width: plateWidth, height: plateHeight)
        plate7RView.backgroundColor = UIColor.blueColor()
        plate7RView.center.y = center.y
        
        plate6RView.frame = CGRect(x: frame.width-xPositionForPlateNumber(3)-plateWidth, y: 0, width: plateWidth, height: plateHeight)
        plate6RView.backgroundColor = UIColor.blueColor()
        plate6RView.center.y = center.y
        
        plate5RView.frame = CGRect(x: frame.width-xPositionForPlateNumber(4)-plateWidth, y: 0, width: plateWidth, height: plateHeight)
        plate5RView.backgroundColor = UIColor.blueColor()
        plate5RView.center.y = center.y
        
        plate4RView.frame = CGRect(x: frame.width-xPositionForPlateNumber(5)-plateWidth, y: 0, width: plateWidth, height: plateHeight)
        plate4RView.backgroundColor = UIColor.blueColor()
        plate4RView.center.y = center.y
        
        plate3RView.frame = CGRect(x: frame.width-xPositionForPlateNumber(6)-plateWidth, y: 0, width: plateWidth, height: plateHeight)
        plate3RView.backgroundColor = UIColor.blueColor()
        plate3RView.center.y = center.y
        
        plate2RView.frame = CGRect(x: frame.width-xPositionForPlateNumber(7)-plateWidth, y: 0, width: plateWidth, height: plateHeight)
        plate2RView.backgroundColor = UIColor.blueColor()
        plate2RView.center.y = center.y
        
        plate1RView.frame = CGRect(x: frame.width-xPositionForPlateNumber(8)-plateWidth, y: 0, width: plateWidth, height: plateHeight)
        plate1RView.backgroundColor = UIColor.blueColor()
        plate1RView.center.y = center.y
    }
    
    func xPositionForPlateNumber(n: CGFloat) -> CGFloat {
        return padding+(n*plateSpacing)+((n-1)*plateWidth)
    }
    
    func setWeight(weight: CGFloat) {
        if (weight % 5 == 0) {
            var perSide = (weight-45)/2
            println(perSide)
        }
    }
    
}
