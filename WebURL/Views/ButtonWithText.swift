//
//  ButtonWithText.swift
//  WebURL
//
//  Created by Victor Ruiz on 12/27/20.
//

import Foundation
import UIKit

class ButtonWithText: UIButton {
    required init(placeholder: String) {
        super.init(frame: .zero)
        backgroundColor = .systemBlue
        layer.cornerRadius = 10
        setTitle(placeholder, for: .normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init coder has not been implemented")
    }
}
