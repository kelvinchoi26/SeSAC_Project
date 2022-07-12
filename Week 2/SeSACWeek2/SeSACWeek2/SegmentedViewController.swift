//
//  SegmentedViewController.swift
//  SeSACWeek2
//
//  Created by 최형민 on 2022/07/12.
//

import UIKit

enum MusicType {
    case all
    case korea
    case other
}

class SegmentedViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControlValueChanged(segmentedControl)
        // Do any additional setup after loading the view.
    }
    
    // 시작부터 첫번째가 기본값으로 선택되어 있게 하고 싶으면 viewDidLoad에 함수 실행하면 됨
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        if segmentedControl.selectedSegmentIndex == 0 {
            resultLabel.text = "첫번째 선택"
        } else if segmentedControl.selectedSegmentIndex == 1 {
            resultLabel.text = "두번째 선택"
        } else if segmentedControl.selectedSegmentIndex == 2 {
            resultLabel.text = "세번째 선택"
        } else {
            resultLabel.text = "오류"
        }
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
