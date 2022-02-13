//
//  UIImage+Resize.swift
//  MyLocations
//
//  Created by Katellyn Hyker on 2/12/22.
//

import Foundation
import UIKit

extension UIImage {
    func resized(withBounds bounds: CGSize) -> UIImage {
        let horizontalRatio = bounds.width / size.width
        let veritcalRatio = bounds.height / size.height
        let ratio = min(horizontalRatio, veritcalRatio)
        let newSize = CGSize(width: size.width * ratio, height: size.height * ratio)
        UIGraphicsBeginImageContextWithOptions(newSize, true, 0)
        draw(in: CGRect(origin: CGPoint.zero, size: newSize))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
}
