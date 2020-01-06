//
//  Color+.swift
//  MobileLabOneButtonKit
//
//  Created by Nien Lam on 1/6/20.
//  Copyright © 2020 Mobile Lab. All rights reserved.
//

import SwiftUI

extension Color {
    init(_ hex: Int) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue)
    }
}
