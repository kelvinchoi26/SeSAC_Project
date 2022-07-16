//
//  ViewController.swift
//  EmotionDiary
//
//  Created by 최형민 on 2022/07/11.
//

import UIKit

enum emotion: Int {
    case 행복해
    case 짜릿해
    case 사랑해
    case 짜증나
    case 당황해
    case 속상해
    case 우울해
    case 심심해
    case 나울어
}

let emotionArrayString = ["행복해", "짜릿해", "사랑해", "짜증나", "당황해", "속상해", "우울해", "심심해", "나울어"]

class ViewController: UIViewController {
    
    
    @IBOutlet var LabelCollection: [UILabel]!
    @IBOutlet weak var Label0: UILabel!
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var Label6: UILabel!
    @IBOutlet weak var Label7: UILabel!
    @IBOutlet weak var Label8: UILabel!
    
    @IBOutlet weak var resetBtn: UIButton!
    
    var emotionArray = [0,0,0,0,0,0,0,0,0]

    override func viewDidLoad() {
        super.viewDidLoad()
        assignLabelText()
        self.navigationItem.title = "감정 다이어리"
        designResetBtn()
    }

    func assignLabelText() {
        Label0.text = "행복해 0"
        Label1.text = "짜릿해 0"
        Label2.text = "사랑해 0"
        Label3.text = "짜증나 0"
        Label4.text = "당황해 0"
        Label5.text = "속상해 0"
        Label6.text = "우울해 0"
        Label7.text = "심심해 0"
        Label8.text = "나 울어 0"
        
        for label in LabelCollection {
            label.textAlignment = .center
        }
    }
    
    func designResetBtn() {
        resetBtn.setTitle("기분 초기화!", for: .normal)
    }
    
    @IBAction func resetBtnClicked(_ sender: UIButton) {
        emotionArray = [0,0,0,0,0,0,0,0,0]
        
        for i in 0..<LabelCollection.count {
            LabelCollection[i].text = "\(emotionArrayString[i])" + " 0"
        }
    }
    
    @IBAction func emotionClicked(_ sender: UIButton) {
        switch sender.tag {
        case emotion.행복해.rawValue:
            emotionArray[0] += 1
            Label0.text = "행복해 \(emotionArray[0])"
        case emotion.짜릿해.rawValue:
            emotionArray[1] += 1
            Label1.text = "짜릿해 \(emotionArray[1])"
        case emotion.사랑해.rawValue:
            emotionArray[2] += 1
            Label2.text = "사랑해 \(emotionArray[2])"
        case emotion.짜증나.rawValue:
            emotionArray[3] += 1
            Label3.text = "짜증나 \(emotionArray[3])"
        case emotion.당황해.rawValue:
            emotionArray[4] += 1
            Label4.text = "당황해 \(emotionArray[4])"
        case emotion.속상해.rawValue:
            emotionArray[5] += 1
            Label5.text = "속상해 \(emotionArray[5])"
        case emotion.우울해.rawValue:
            emotionArray[6] += 1
            Label6.text = "우울해 \(emotionArray[6])"
        case emotion.심심해.rawValue:
            emotionArray[7] += 1
            Label7.text = "심심해 \(emotionArray[7])"
        case emotion.나울어.rawValue:
            emotionArray[8] += 1
            Label8.text = "나 울어 \(emotionArray[8])"
        default: print("오류")
        }
    }
}

