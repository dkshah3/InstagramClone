//
//  UIImage+Size.swift
//  Makestagram
//
//  Created by Dhrumil Shah on 2017-07-19.
//  Copyright © 2017 Dhrumil Shah. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    var aspectHeight: CGFloat {
        let heightRatio = size.height / 736
        let widthRatio = size.width / 414
        let aspectRatio = fmax(heightRatio, widthRatio)
        
        return size.height / aspectRatio
    }
}