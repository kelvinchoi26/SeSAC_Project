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
    
    let dict = ["안녕": "인사", "하디": "바보", "새싹": "열심히 하자", "윰차": "유모차", "실매": "실시간 매니저", "만반잘부": "만나서 반가워 잘 부탁해", "꾸안꾸": "꾸민듯 안 꾸민듯"]
    var hashTagArray = ["안녕", "하디", "새싹", "윰차"]
    
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
    
    // Textfield 오브젝트의 Did End On Exit 속성 선택
    @IBAction func returnKeyClicked(_ sender: Any) {
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
        // 스위치로 구현
        switch textField.text {
        case "안녕":
            definitionLabel.text = "안녕"
            hashTagArray.removeFirst()
            hashTagArray.append("안녕")
        case "하디":
            definitionLabel.text = "하디"
            hashTagArray.removeFirst()
            hashTagArray.append("하디")
        case "새싹":
            definitionLabel.text = "새싹"
            hashTagArray.removeFirst()
            hashTagArray.append("새싹")
        case "윰차":
            definitionLabel.text = "윰차"
            hashTagArray.removeFirst()
            hashTagArray.append("윰차")
        case "실매":
            definitionLabel.text = "실매"
            hashTagArray.removeFirst()
            hashTagArray.append("실매")
        case "만반잘부":
            definitionLabel.text = "만반잘부"
            hashTagArray.removeFirst()
            hashTagArray.append("만반잘부")
        case "꾸안꾸":
            definitionLabel.text = "꾸안꾸"
            hashTagArray.removeFirst()
            hashTagArray.append("꾸안꾸")
        default:
            break
        }
        for btn in hashTagBtn {
            btn.setTitle(hashTagArray[btn.tag], for: .normal)
        }
        // 옵셔널 바인딩으로 구현 (존재하지 않는 단어인 경우 결과 안 바뀜
//        if let value = dict[textField.text!] {
//            // 첫 번쨰 해시태그는 pop 시키고 마지막 버튼에 가장 최근 검색한 단어 추가
//            definitionLabel.text = value
//            hashTagArray.removeFirst()
//            let word = textField.text!
//            hashTagArray.append(word)
//
//            // 해시태그 업데이트
//            for btn in hashTagBtn {
//                btn.setTitle(hashTagArray[btn.tag], for: .normal)
//            }
//        }
    }
    
    func designHashTagBtn() {
        for btn in hashTagBtn {
            btn.titleLabel?.textColor = UIColor.black
            btn.layer.cornerRadius = 0.1 * btn.bounds.size.width
            btn.layer.borderWidth = 1
        }
    }
}

