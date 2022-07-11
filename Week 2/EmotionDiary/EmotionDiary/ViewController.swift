//
//  ViewController.swift
//  EmotionDiary
//
//  Created by 최형민 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var Label6: UILabel!
    @IBOutlet weak var Label7: UILabel!
    @IBOutlet weak var Label8: UILabel!
    @IBOutlet weak var Label9: UILabel!
    
    var labelArray = ["행복해": 0, "사랑해": 0, "좋아해": 0, "당황해": 0, "속상해": 0, "우울해": 0, "심심해": 0, "시무룩해": 0, "슬퍼해": 0]

    override func viewDidLoad() {
        super.viewDidLoad()
        assignLabelText()
    }

    func assignLabelText() {
        Label1.text = "행복해 0"
        Label2.text = "사랑해 0"
        Label3.text = "좋아해 0"
        Label4.text = "당황해 0"
        Label5.text = "속상해 0"
        Label6.text = "우울해 0"
        Label7.text = "심심해 0"
        Label8.text = "행복해 0"
        Label9.text = "행복해 0"
    }
    
    var count1 = 1
    @IBAction func emotionClicked1(_ sender: UIButton) {
        Label1.text = "행복해 \(count1)"
        count1 += 1
    }
    
    var count2 = 1
    @IBAction func emotionClicked2(_ sender: UIButton) {
        Label2.text = "사랑해 \(count2)"
        count2 += 1
    }
    
    var count3 = 1
    @IBAction func emotionClicked3(_ sender: UIButton) {
        Label3.text = "좋아해 \(count3)"
        count3 += 1
    }
    
    var count4 = 1
    @IBAction func emotionClicked4(_ sender: UIButton) {
        Label4.text = "당황해 \(count4)"
        count4 += 1
    }
    
    var count5 = 1
    @IBAction func emotionClicked5(_ sender: UIButton) {
        Label5.text = "속상해 \(count5)"
        count5 += 1
    }
    
    var count6 = 1
    @IBAction func emotionClicked6(_ sender: UIButton) {
        Label6.text = "우울해 \(count6)"
        count6 += 1
    }
    
    var count7 = 1
    @IBAction func emotionClicked7(_ sender: UIButton) {
        Label7.text = "심심해 \(count7)"
        count7 += 1
    }
    
    var count8 = 1
    @IBAction func emotionClicked8(_ sender: UIButton) {
        Label8.text = "행복해 \(count8)"
        count8 += 1
    }
    
    var count9 = 1
    @IBAction func emotionClicked9(_ sender: UIButton) {
        Label9.text = "행복해 \(count9)"
        count9 += 1
    }
    
}

