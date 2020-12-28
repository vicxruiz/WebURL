//
//  UIButtonExtension.swift
//  WebURL
//
//  Created by Victor Ruiz on 12/27/20.
//

import Foundation
import UIKit

extension UIButton {
    func buttonPressedAnimation(completion: @escaping () -> Void) {
        self.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
        
        UIView.animate(withDuration: 0.75,
                       delay: 0,
                       usingSpringWithDamping: CGFloat(0.20),
                       initialSpringVelocity: CGFloat(6.0),
                       options: UIView.AnimationOptions.allowUserInteraction,
                       animations: {
                        self.transform = CGAffineTransform.identity
                       },
                       completion: { completed in
                        if completed {
                            completion()
                        }
                       })
    }
}
