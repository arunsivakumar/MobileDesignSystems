//
//  Colors..swift
//  MobileDesignSystems
//
//  Created by Arun Sivakumar on 23/2/20.
//  Copyright © 2020 Arun Sivakumar. All rights reserved.
//

import UIKit

enum ColorType: String {
    case clred
    case clgreen
    case clblue
    case clwhite
}

extension UIColor {
    static func custom(_ color: ColorType) -> UIColor {
        UIColor(named: color.rawValue) ?? UIColor.white
    }
}
