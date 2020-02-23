//
//  FontStyle.swift
//  MobileDesignSystems
//
//  Created by Arun Sivakumar on 23/2/20.
//  Copyright © 2020 Arun Sivakumar. All rights reserved.
//

import UIKit

enum FontStyle {
   case body
   case caption
   case headline
   case subtitle
   case title
}

extension UILabel {
    func font(style: FontStyle) {
        let customFont: UIFont
        switch style {
        case .body:
            customFont = UIFont(name: "Menlo-Regular", size: 18.0) ?? UIFont.systemFont(ofSize: 18.0)
        case .caption:
            customFont = UIFont(name: "Menlo-Italic", size: 14.0) ?? UIFont.systemFont(ofSize: 14.0)
        case .headline:
            customFont = UIFont(name: "Menlo-Italic", size: 20.0) ?? UIFont.systemFont(ofSize: 20.0)
        case .subtitle:
            customFont = UIFont(name: "Menlo-Bold", size: 24.0) ?? UIFont.systemFont(ofSize: 24.0)
        case .title:
            customFont = UIFont(name: "Menlo-Bold", size: 40.0) ?? UIFont.systemFont(ofSize: 40.0)
        }
        self.font = customFont
    }
}
