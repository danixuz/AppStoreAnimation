//
//  CustomCorner.swift
//  AppStoreAnimation
//
//  Created by Daniel Spalek on 15/05/2022.
//

import SwiftUI

// MARK: Allowing you to customize which corners are rounded and which are not
struct CustomCorner: Shape{
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}
