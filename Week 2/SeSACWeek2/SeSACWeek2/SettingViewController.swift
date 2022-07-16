//
//  SettingViewController.swift
//  SeSACWeek2
//
//  Created by 최형민 on 2022/07/14.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let format = DateFormatter()
        format.dateFormat = "M월 d일, yy년"
        
        let result = format.string(from: Date())
        print(result, Date())
        
        let word = "3월 2일, 19년"
        let dateResult = format.date(from: word)
        
        print(dateResult)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
