//
//  UIColor+Extensions.swift
//  MobileLab1ButtonKit
//
//  Created by Nien Lam on 1/23/18.
//  Copyright © 2018 Mobile Lab. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(hex:Int) {
        self.init(red:(hex >> 16) & 0xff, green:(hex >> 8) & 0xff, blue:hex & 0xff)
    }

    struct MobileLab {
        static let green  = UIColor(hex: 0x61BB46)
        static let yellow = UIColor(hex: 0xFDB827)
        static let orange = UIColor(hex: 0xF5821F)
        static let red    = UIColor(hex: 0xE03A3E)
        static let purple = UIColor(hex: 0x963D97)
        static let blue   = UIColor(hex: 0x009DDC)
    }
}
