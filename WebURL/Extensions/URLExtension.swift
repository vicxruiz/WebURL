//
//  URLExtension.swift
//  WebURL
//
//  Created by Victor Ruiz on 12/27/20.
//

import Foundation
import UIKit

extension String {
    func validateURL() -> Bool {
        let regEx = "((https|http)://)((\\w|-)+)(([.]|[/])((\\w|-)+))+"
        guard
            let url = URL(string: self),
            NSPredicate(format: "SELF MATCHES %@", argumentArray: [regEx]).evaluate(with: self),
            UIApplication.shared.canOpenURL(url)
        else {
            return false
        }
        return true
    }
}
