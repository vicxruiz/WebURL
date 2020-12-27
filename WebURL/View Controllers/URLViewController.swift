//
//  URLViewController.swift
//  WebURL
//
//  Created by Victor Ruiz on 12/27/20.
//

import Foundation
import UIKit

class URLViewController: UIViewController {
    
    let tableView = UITableView()
    let URLField = InputField(placeholder: TextContent.TextField.enterURL)
    let addURLButton = ButtonWithText(placeholder: TextContent.Button.addURL)
    let screenHeight = UIScreen.main.bounds.height
    let screenWidth = UIScreen.main.bounds.width
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(screenWidth)
        print(screenHeight)
        setupViews()
    }
    
}

//MARK: - Setup Views

extension URLViewController {
    
    private func setupViews() {
        setupTextField()
        setupAddUrlButton()
        setupTableView()
    }
    
    private func setupTextField() {
        URLField.translatesAutoresizingMaskIntoConstraints = false

        hideKeyboardWhenTappedAround()
        
        view.addSubview(URLField)
        
        NSLayoutConstraint.activate([
            URLField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: screenWidth * 0.06),
            URLField.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -screenWidth * 0.06),
            URLField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: screenHeight * 0.05),
            URLField.heightAnchor.constraint(equalToConstant: screenHeight * 0.035)
        ])
    }
    
    private func setupAddUrlButton() {
        addURLButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(addURLButton)
        
        NSLayoutConstraint.activate([
            addURLButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: screenWidth * 0.06),
            addURLButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -screenWidth * 0.06),
            addURLButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -screenHeight * 0.05),
            addURLButton.heightAnchor.constraint(equalToConstant: screenHeight * 0.035)
        ])
    }
    
    private func setupTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.tableFooterView = UIView(frame: .zero)
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: screenWidth * 0.06),
            tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -screenWidth * 0.06),
            tableView.topAnchor.constraint(equalTo: URLField.bottomAnchor),
            tableView.bottomAnchor.constraint(equalTo: addURLButton.topAnchor, constant: -16)
        ])
    }
}
