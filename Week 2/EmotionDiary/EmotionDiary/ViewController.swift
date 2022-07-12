//
//  ViewController.swift
//  EmotionDiary
//
//  Created by 최형민 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Label0: UILabel!
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var Label6: UILabel!
    @IBOutlet weak var Label7: UILabel!
    @IBOutlet weak var Label8: UILabel!
    
    var emotionArray = [0,0,0,0,0,0,0,0,0]

    override func viewDidLoad() {
        super.viewDidLoad()
        assignLabelText()
        self.navigationItem.title = "감정 다이어리"
    }

    func assignLabelText() {
        Label0.text = "행복해 0"
        Label1.text = "행복해 0"
        Label2.text = "사랑해 0"
        Label3.text = "좋아해 0"
        Label4.text = "당황해 0"
        Label5.text = "속상해 0"
        Label6.text = "우울해 0"
        Label7.text = "심심해 0"
        Label8.text = "행복해 0"
        
        Label0.textAlignment = .center
        Label1.textAlignment = .center
        Label2.textAlignment = .center
        Label3.textAlignment = .center
        Label4.textAlignment = .center
        Label5.textAlignment = .center
        Label6.textAlignment = .center
        Label7.textAlignment = .center
        Label8.textAlignment = .center
    }
    
    
    @IBAction func emotionClicked(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            emotionArray[0] += 1
            Label0.text = "행복해 \(emotionArray[0])"
        case 1:
            emotionArray[1] += 1
            Label1.text = "행복해 \(emotionArray[1])"
        case 2:
            emotionArray[2] += 1
            Label2.text = "행복해 \(emotionArray[2])"
        case 3:
            emotionArray[3] += 1
            Label3.text = "행복해 \(emotionArray[3])"
        case 4:
            emotionArray[4] += 1
            Label4.text = "행복해 \(emotionArray[4])"
        case 5:
            emotionArray[5] += 1
            Label5.text = "행복해 \(emotionArray[5])"
        case 6:
            emotionArray[6] += 1
            Label6.text = "행복해 \(emotionArray[6])"
        case 7:
            emotionArray[7] += 1
            Label7.text = "행복해 \(emotionArray[7])"
        case 8:
            emotionArray[8] += 1
            Label8.text = "행복해 \(emotionArray[8])"
        default: print("오류")
        }
    }
}

