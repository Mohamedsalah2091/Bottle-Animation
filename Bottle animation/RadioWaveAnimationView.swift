//
//  RadioWaveAnimationView.swift
//  Bottle animation
//
//  Created by MAK on 12/11/20.
//  Copyright © 2020 MAK. All rights reserved.
//

import UIKit


struct points {
    var xPoint : CGFloat = 0.0
    var yPoint : CGFloat = 0.0
}


class RadioWaveAnimationView: UIView {
    
    weak var shapeLayer: CAShapeLayer?
    
    func leftLine(movePoints : points , addLinePoints : points , duration : Double){
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: movePoints.xPoint, y: movePoints.yPoint ))
        path.addLine(to: CGPoint(x: addLinePoints.xPoint, y: addLinePoints.yPoint ))
        
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.fillColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        shapeLayer.strokeColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        shapeLayer.lineWidth = 3
        shapeLayer.path = path.cgPath
        
        // animate
        
        self.layer.addSublayer(shapeLayer)
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.duration = duration
        shapeLayer.add(animation, forKey: "MyAnimation")
        
        self.shapeLayer = shapeLayer
    }
    
    override func draw(_ rect: CGRect) {
        super.awakeFromNib()
        var movePoints = points()
        var addLinePoints = points()
        
        // back
        movePoints.xPoint = 50
        movePoints.yPoint = bounds.height / 1.7 + 5
        addLinePoints.xPoint = bounds.width / 3 + 100
        addLinePoints.yPoint = bounds.height / 1.7 + 5
        leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.7)
        
        
        
        
        // left
        movePoints.xPoint = bounds.width / 4
        movePoints.yPoint = bounds.height / 4
        addLinePoints.xPoint = bounds.width / 3
        addLinePoints.yPoint = bounds.height / 1.7 + 2
        leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.7)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            // back
            movePoints.xPoint = self.bounds.width / 3
            movePoints.yPoint = self.bounds.height / 1.7
            addLinePoints.xPoint = self.bounds.width / 3 + 100
            addLinePoints.yPoint = self.bounds.height / 1.7
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.7)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.4) {
            // right
            movePoints.xPoint = self.bounds.width / 3 + 100
            movePoints.yPoint = self.bounds.height / 1.7 + 2
            addLinePoints.xPoint = self.bounds.width / 4 + 150
            addLinePoints.yPoint = self.bounds.height / 4
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.7)
        }
        
        // top one
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.1) {
            // Left Corner base
            movePoints.xPoint = self.bounds.width / 4 + 150 - 2
            movePoints.yPoint = self.bounds.height / 4
            addLinePoints.xPoint = self.bounds.width / 4 + 169
            addLinePoints.yPoint = self.bounds.height / 4
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.3)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.4) {
            // Left Corner heigt
            movePoints.xPoint = self.bounds.width / 4 + 169
            movePoints.yPoint = self.bounds.height / 4 + 2
            addLinePoints.xPoint = self.bounds.width / 4 + 168
            addLinePoints.yPoint = self.bounds.height / 4 - 20
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.3)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.7) {
            // ROOF Top
            movePoints.xPoint =  self.bounds.width / 4 + 170
            movePoints.yPoint =  self.bounds.height / 4 - 20
            addLinePoints.xPoint = self.bounds.width / 4 - 20
            addLinePoints.yPoint = self.bounds.height / 4 - 20
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.7)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.4) {
            // right Corner heigt
            movePoints.xPoint = self.bounds.width / 4 - 18
            movePoints.yPoint = self.bounds.height / 4 - 20
            addLinePoints.xPoint =  self.bounds.width / 4 - 19
            addLinePoints.yPoint =  self.bounds.height / 4 + 2
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.3)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.8) {
            // right Corner base
            movePoints.xPoint = self.bounds.width / 4 - 19
            movePoints.yPoint = self.bounds.height / 4
            addLinePoints.xPoint =  self.bounds.width / 4 + 2
            addLinePoints.yPoint = self.bounds.height / 4
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.3)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.2) {
            // ROOF Bottom
            movePoints.xPoint =  self.bounds.width / 4 + 2
            movePoints.yPoint =  self.bounds.height / 4
            addLinePoints.xPoint = self.bounds.width / 4 + 150 - 2
            addLinePoints.yPoint = self.bounds.height / 4
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.7)
        }
        
        // top ON top
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.7) {
            // left
            movePoints.xPoint =  self.bounds.width / 4 - 5
            movePoints.yPoint =  self.bounds.height / 4 - 20
            addLinePoints.xPoint = self.bounds.width / 4 + 2
            addLinePoints.yPoint = self.bounds.height / 4 - 40
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.3)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.2) {
            // Base
            movePoints.xPoint =  self.bounds.width / 4 + 2
            movePoints.yPoint =  self.bounds.height / 4 - 40
            addLinePoints.xPoint = self.bounds.width / 4 + 150 - 2
            addLinePoints.yPoint = self.bounds.height / 4 - 40
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.7)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.8) {
            // Right
            movePoints.xPoint =  self.bounds.width / 4 + 150 - 2
            movePoints.yPoint =   self.bounds.height / 4 - 40
            addLinePoints.xPoint = self.bounds.width / 4 + 150 + 3
            addLinePoints.yPoint = self.bounds.height / 4 - 20
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.3)
        }
        // Suction cup
        
        
        // Right
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.1) {
            movePoints.xPoint =  self.bounds.width / 4 + 148 - 40
            movePoints.yPoint =  self.bounds.height / 4 - 40
            addLinePoints.xPoint = self.bounds.width / 4 + 148 - 35
            addLinePoints.yPoint = self.bounds.height / 4 - 70
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.4)
        }
        // top Right
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.5) {
            movePoints.xPoint =  self.bounds.width / 4 + 148 - 35
            movePoints.yPoint =  self.bounds.height / 4 - 70
            addLinePoints.xPoint = self.bounds.width / 4 + 148 - 5
            addLinePoints.yPoint = self.bounds.height / 4 - 95
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.4)
        }
        // end
        DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
            movePoints.xPoint =  self.bounds.width / 4 + 148 - 5
            movePoints.yPoint =  self.bounds.height / 4 - 95
            addLinePoints.xPoint = self.bounds.width / 4 + 148 - 5
            addLinePoints.yPoint = self.bounds.height / 4 - 85
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.3)
        }
        
        // top left
        DispatchQueue.main.asyncAfter(deadline: .now() + 7.3) {
            movePoints.xPoint = self.bounds.width / 4 + 148 - 5
            movePoints.yPoint = self.bounds.height / 4 - 85
            addLinePoints.xPoint = self.bounds.width / 4 + 148 - 25
            addLinePoints.yPoint = self.bounds.height / 4 - 70
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.4)
        }
        // left
        DispatchQueue.main.asyncAfter(deadline: .now() + 7.7) {
            movePoints.xPoint =  self.bounds.width / 4 + 148 - 25
            movePoints.yPoint = self.bounds.height / 4 - 70
            addLinePoints.xPoint =  self.bounds.width / 4 + 148 - 30
            addLinePoints.yPoint = self.bounds.height / 4 - 40
            self.leftLine(movePoints: movePoints, addLinePoints: addLinePoints, duration: 0.4)
        }
        
        
        
        
        
        
        
    }
    
    
}
