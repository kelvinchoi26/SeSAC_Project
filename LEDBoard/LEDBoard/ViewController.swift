//
//  ViewController.swift
//  LEDBoard
//
//  Created by 최형민 on 2022/07/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var EmailInput: UITextField!
    @IBOutlet weak var PasswordInput: UITextField!
    @IBOutlet weak var NicknameInput: UITextField!
    @IBOutlet weak var LocationInput: UITextField!
    @IBOutlet weak var CodeInput: UITextField!
    @IBOutlet weak var SignupBtn: UIButton!
    
    @IBOutlet weak var ExtraInfoBtn: UIButton!
    @IBOutlet weak var Switch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Switch.setOn(true, animated: true)
        ExtraInfoBtn.setTitle("추가 정보 입력", for: .normal)
        
        EmailInput.keyboardType = .emailAddress
        PasswordInput.keyboardType = .default
        NicknameInput.keyboardType = .default
        LocationInput.keyboardType = .default
        CodeInput.keyboardType = .default
        
        PasswordInput.isSecureTextEntry = true
        
        EmailInput.layer.cornerRadius = 5
        PasswordInput.layer.cornerRadius = 5
        NicknameInput.layer.cornerRadius = 5
        LocationInput.layer.cornerRadius = 5
        CodeInput.layer.cornerRadius = 5
        SignupBtn.layer.cornerRadius = 5
        
        EmailInput.textColor = UIColor.white
        PasswordInput.textColor = UIColor.white
        NicknameInput.textColor = UIColor.white
        LocationInput.textColor = UIColor.white
        CodeInput.textColor = UIColor.white
        
        SignupBtn.backgroundColor = UIColor.white
        SignupBtn.setTitle("회원가입", for: .normal)
        SignupBtn.setTitleColor(UIColor.black, for: .normal)
    }

    @IBAction func SignupClicked(_ sender: Any) {
        let alert = UIAlertController(title: "알림", message: "이메일과 비밀번호를 모두 입력해주세요", preferredStyle: UIAlertController.Style.alert)
        
        let check = UIAlertAction(title: "확인", style: .default)
        
        alert.addAction(check)
        
        if EmailInput.text!.isEmpty || PasswordInput.text!.isEmpty {
            present(alert, animated: true)
        }
        view.endEditing(true)
    }
    
    @IBAction func TapGestureClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    

}

