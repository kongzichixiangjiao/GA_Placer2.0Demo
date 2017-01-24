//
//  GA_ShadowView.swift
//  GA_Placer1.1.0Demo
//
//  Created by houjianan on 2016/10/24.
//  Copyright © 2016年 houjianan. All rights reserved.
//

import UIKit

extension UIView {
    
    func ga_shadow(r shadowRadius: CGFloat, color: UIColor, offset: CGSize = CGSize(width: 0,height: 0), cornerRadius: CGFloat = 4) {
        layer.shadowColor = color.cgColor
        layer.masksToBounds = false
        layer.cornerRadius = cornerRadius
        layer.shadowOffset = offset
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = 0.5
        /*
         let x: CGFloat = -shadowRadius
         let y: CGFloat = -shadowRadius
         let w: CGFloat = frame.width + shadowRadius * 2
         let h: CGFloat = frame.height + shadowRadius * 2
         */
        let x: CGFloat = shadowRadius
        let y: CGFloat = shadowRadius
        let w: CGFloat = frame.width - shadowRadius * 2
        let h: CGFloat = frame.height
        layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: x, y: y, width: w, height: h), cornerRadius: cornerRadius).cgPath
    }
    
    func ga_shadow(r shadowRadius: CGFloat, color: UIColor, offset: CGSize = CGSize(width: 0,height: 0), pathRect: CGRect, cornerRadius: CGFloat = 4) {
        layer.shadowColor = color.cgColor
        layer.masksToBounds = false
        layer.cornerRadius = cornerRadius
        layer.shadowOffset = offset
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = 0.5
        /*
         let x: CGFloat = -shadowRadius
         let y: CGFloat = -shadowRadius
         let w: CGFloat = frame.width + shadowRadius * 2
         let h: CGFloat = frame.height + shadowRadius * 2
         */
        let x: CGFloat = pathRect.origin.x
        let y: CGFloat = pathRect.origin.y
        let w: CGFloat = pathRect.size.width
        let h: CGFloat = pathRect.size.height
        layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: x, y: y, width: w, height: h), cornerRadius: cornerRadius).cgPath
    }
    
    func ga_cornerRadius(r shadowRadius: CGFloat) {
        layer.masksToBounds = true
        layer.cornerRadius = shadowRadius
    }
    
    func ga_border(width: CGFloat = 0.5, color: UIColor, bgColor: UIColor=UIColor.white) {
        layer.borderColor = color.cgColor // eeeeee
        layer.borderWidth = width
        self.backgroundColor = bgColor
    }
    
    func ga_border(width: CGFloat = 1.0, color: UIColor) {
        layer.borderColor = color.cgColor // eeeeee
        layer.borderWidth = width
        /*
        let lindWidth: CGFloat = 1
        let x: CGFloat = -0.5
        let y: CGFloat = -0.5
        
        let w: CGFloat = rect.size.width - 1
        let h: CGFloat = rect.size.height - 1
        let r: CGFloat = 10
        
        // 获得句柄
        let context = UIGraphicsGetCurrentContext()
        //
        //                let rectanglePath = UIBezierPath(roundedRect: CGRect(x: x, y: y, width: w, height: h), cornerRadius: r)
        //                context?.addPath(rectanglePath.cgPath)
        //                context!.setLineCap(.butt)
        //                context?.setFillColor(UIColor.white.cgColor)
        //                context!.setShadow(offset: CGSize(width: 0.0, height: 0.0),blur: 2.5)
        //                context?.fillPath()
        //                context!.saveGState()
        
        // 画路径 可以用bezier曲线
        context?.move(to: CGPoint(x: x + r, y: y))
        context?.addLine(to: CGPoint(x: w - r, y: y))
        context?.addArc(tangent1End: CGPoint(x: w, y: y),
                        tangent2End: CGPoint(x: w, y: y + r),
                        radius: r)
        context?.addLine(to: CGPoint(x: w, y: h - r))
        context?.addArc(tangent1End: CGPoint(x: w, y: h),
                        tangent2End: CGPoint(x: w - r, y: h),
                        radius: r)
        context?.addLine(to: CGPoint(x: x + r, y: h))
        context?.addArc(tangent1End: CGPoint(x: x, y: h),
                        tangent2End: CGPoint(x: x, y: h - r),
                        radius: r)
        context?.addLine(to: CGPoint(x: x, y: y + r))
        context?.addArc(tangent1End: CGPoint(x: x, y: y),
                        tangent2End: CGPoint(x: x + r, y: y),
                        radius: r)
        context!.setLineCap(.butt)
        context!.setLineWidth(lindWidth)
        context?.setFillColor(UIColor.white.cgColor)
        context!.setStrokeColor(UIColor.red.cgColor)
        context!.strokePath()
        context!.saveGState()
         */
    }
}
