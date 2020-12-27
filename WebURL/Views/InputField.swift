//
//  URLInputField.swift
//  WebURL
//
//  Created by Victor Ruiz on 12/27/20.
//

import Foundation
import UIKit

class InputField: UITextField {
    
    required init(placeholder: String? = nil) {
        super.init(frame: .zero)
        self.placeholder = placeholder
        if let placeholderText = placeholder {
            attributedPlaceholder = NSAttributedString(string: placeholderText,
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        }
        textAlignment = .left
        borderStyle = .roundedRect
        font = UIFont.boldSystemFont(ofSize: 16)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init coder has not been implemented")
    }
}
