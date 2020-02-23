//
//  UIButton+Extension.swift
//  MobileDesignSystems
//
//  Created by Arun Sivakumar on 23/2/20.
//  Copyright © 2020 Arun Sivakumar. All rights reserved.
//

import UIKit

enum ButtonTypeExtended {
    case primaryDark
    case primaryLight
    case secondary
    
    var height: CGFloat {
        switch self {
        case .primaryDark: return 47
        case .primaryLight: return 47
        case .secondary: return 20
        }
    }
    
    var edgeInset: UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    }
}


extension UIButton {
    
    func set(type: ButtonTypeExtended) {
        switch type {
        case .primaryDark:
            self.heightAnchor.constraint(equalToConstant: type.height).isActive = true
            self.contentEdgeInsets = type.edgeInset
            self.titleLabel?.font(style: .title)
            self.backgroundColor = .custom(.clblue)
            self.setTitleColor(.custom(.clwhite), for: .normal)
            self.makeRoundedCorner(height: type.height)
        case .primaryLight:
            self.heightAnchor.constraint(equalToConstant: type.height).isActive = true
            self.contentEdgeInsets = type.edgeInset
            self.titleLabel?.font(style: .title)
            self.backgroundColor = .custom(.clwhite)
            self.setTitleColor(.custom(.clblue), for: .normal)
            self.layer.borderColor = UIColor.custom(.clblue).cgColor
            self.layer.borderWidth = 2.0
            self.makeRoundedCorner(height: type.height)
        case .secondary:
            self.heightAnchor.constraint(equalToConstant: type.height).isActive = true
            self.contentEdgeInsets = type.edgeInset
            self.titleLabel?.font(style: .body)
            self.backgroundColor = .custom(.clwhite)
            self.setTitleColor(.custom(.clblue), for: .normal)
        }
    }
}

extension UIView {
    func makeRoundedCorner(height: CGFloat) {
        self.layer.cornerRadius = height / 2
        self.clipsToBounds = true
    }
}
