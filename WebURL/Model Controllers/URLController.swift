//
//  URLController.swift
//  WebURL
//
//  Created by Victor Ruiz on 12/27/20.
//

import Foundation

class URLController {
    var URLs: [URL] = []
    
    func validateURL(urlString: String) -> Bool {
        if urlString.validateURL() {
            if let url = URL(string: urlString) {
                URLs.append(url)
                return true
            }
        }
        return false
    }
}
