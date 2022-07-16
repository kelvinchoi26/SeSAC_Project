//
//  ViewController.swift
//  DDayCount
//
//  Created by 최형민 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDatePickerType()
    }
    
    // 최근 날짜 순으로 imagview/label에 데이터 띄우기

    func setDatePickerType() {
        if #available(iOS 14.0, *) {
            // 버전 14.0 이상일 때는 inline
            datePicker.preferredDatePickerStyle = .inline
        } else {
            // 나머지는 wheels
            datePicker.datePickerMode = .
        }
    }

    @IBAction func dateChanged(_ sender: UIDatePicker) {
        print(sender.date.formatted())
        print(sender.date)
    }
}

