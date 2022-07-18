//
//  ViewController.swift
//  TrendMedia
//
//  Created by 최형민 on 2022/07/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var secondDateLabel: UILabel!
    
    @IBOutlet var dateLabelCollection: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func configureLabelDesign() {
        // 1. OutletCollection
        for label in dateLabelCollection {
            label.font = .boldSystemFont(ofSize: 20)
            label.textColor = .brown
        }
        
        // 2. UILabel
        let labelArray = [dateLabel, secondDateLabel]
        for label in labelArray {
            label!.font = .boldSystemFont(ofSize: 20)
            label!.textColor = .brown
        }
    }

    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "yyyy/MM/dd"
        
        dateLabel.text = format.string(from: sender.date)
        // 위와 같은 포맷의 날짜를 dateLabel에 전달
    }
    
}

