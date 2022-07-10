//
//  ViewController.swift
//  NewlyCoinedWord
//
//  Created by 최형민 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet var hashTagBtn: [UIButton]!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var definitionLabel: UILabel!
    
    let dict = ["안녕": "인사", "하디": "바보", "새싹": "열심히 하자"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        designTextField()
        designSearchBtn()
        designHashTagBtn()
    }

    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func searchButtonClicked(_ sender: UIButton) {
        showSearchResult()
        view.endEditing(true)
    }
    
    @IBAction func returnKeyClicked(_ sender: UITextField) {
        showSearchResult()
        view.endEditing(true)
    }
    
    func designTextField() {
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 1
    }
    
    func designSearchBtn() {
        searchButton.tintColor = .black
        searchButton.layer.borderWidth = 1
        searchButton.layer.borderColor = UIColor.black.cgColor
    }
    
    func showSearchResult() {
        if let value = dict[textField.text!] {
            definitionLabel.text = value
        }
    }
    
    func designHashTagBtn() {
        for btn in hashTagBtn {
            btn.titleLabel?.textColor = UIColor.black
            btn.layer.cornerRadius = 0.1 * btn.bounds.size.width
            btn.layer.borderWidth = 1
        }
    }
}

