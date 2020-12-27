//
//  URLViewController.swift
//  WebURL
//
//  Created by Victor Ruiz on 12/27/20.
//

import Foundation
import UIKit

class URLViewController: UIViewController {
    
    //MARK: - Properties
    
    let urlController = URLController()
    let tableView = UITableView()
    let URLField = InputField(placeholder: TextContent.TextField.enterURL)
    let addURLButton = ButtonWithText(placeholder: TextContent.Button.addURL)
    let screenHeight = UIScreen.main.bounds.height
    let screenWidth = UIScreen.main.bounds.width
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        URLField.delegate = self
        URLField.translatesAutoresizingMaskIntoConstraints = false
        hideKeyboardWhenTappedAround()
        
        view.addSubview(URLField)
        
        NSLayoutConstraint.activate([
            URLField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: screenWidth * 0.06),
            URLField.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -screenWidth * 0.06),
            URLField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: screenHeight * 0.06),
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
            addURLButton.heightAnchor.constraint(equalToConstant: screenHeight * 0.05)
        ])
    }
    
    private func setupTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.register(URLTableViewCell.self, forCellReuseIdentifier: TextContent.URLTableView.cellIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: screenWidth * 0.06),
            tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -screenWidth * 0.06),
            tableView.topAnchor.constraint(equalTo: URLField.bottomAnchor),
            tableView.bottomAnchor.constraint(equalTo: addURLButton.topAnchor, constant: -16)
        ])
    }
}

//MARK: - Table View Functionality

extension URLViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return urlController.URLs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TextContent.URLTableView.cellIdentifier, for: indexPath)
        let url = urlController.URLs[indexPath.row]
        cell.textLabel?.text = "\(url.absoluteString)"
        return cell
    }
}

//MARK: - Text Field Functionality

extension URLViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
