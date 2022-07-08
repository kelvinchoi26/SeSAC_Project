//
//  ViewController.swift
//  LED
//
//  Created by 최형민 on 2022/07/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldView: UIView!
    @IBOutlet weak var TextInput: UITextField!
    @IBOutlet weak var EnterBtn: UIButton!
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var textColorBtn: UIButton!
    
    @IBOutlet var btnList: [UIButton]! // 버튼 두 개가 다 들어가게 됨
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ResultLabel.numberOfLines = 0
        // 0으로 설정하면 줄이 무한대로 늘어남
        designTextField()
        designButton(buttonOutletVariableName: EnterBtn)
        designButton(buttonOutletVariableName: textColorBtn)
    }
    
    func designTextField() {
        TextInput.placeholder = "내용을 작성해주세요"
        TextInput.text = "안녕하세요"
        TextInput.keyboardType = .emailAddress
        TextInput.font = .systemFont(ofSize: 15)
        TextInput.borderStyle = .none
        TextInput.textColor = .blue
    }
    
    // buttonOutletVariableName: 외부 매개변수, Argument Label
    // 매개변수 생략하고 싶으면 _ 입력
    // buttonName: 내부 매개변수, Parameter Name
    func designButton(buttonOutletVariableName buttonName: UIButton) {
        buttonName.setTitle("전송", for: .normal)
        buttonName.setTitle("빨리보내!", for: .highlighted)
        buttonName.backgroundColor = .yellow
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
    }
    
    func studyOutletCollection() {
        // 1. 반복문
        let buttonArray = [EnterBtn, textColorBtn]
        
//        for item in buttonArray {
//            item?.backgroundColor = .blue
//            item.layer.cornerRadius = 2
//        }
        
        // 2. 아울렛 컬렉션 (땡겨올때 Outlet이 아닌 Outlet Collection으로 떙겨올 수 있음)
    }

    @IBAction func EnterClicked(_ sender: UIButton) {
        ResultLabel.text = TextInput.text
        view.endEditing(true)
    }
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
        
        // 탭제스쳐 클릭시 textfield view 숨김
        if !textFieldView.isHidden {
            textFieldView.isHidden = true
        } else {
            textFieldView.isHidden = false
        }
    }
    
    @IBAction func returnKeyClicked(_ sender: UITextField) {
        ResultLabel.text = TextInput.text
        view.endEditing(true)
    }
    // Type을 Any로 하면 위 두 action function을 합칠 수 있음
}

