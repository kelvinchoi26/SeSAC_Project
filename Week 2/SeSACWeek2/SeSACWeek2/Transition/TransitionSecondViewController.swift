//
//  TransitionSecondViewController.swift
//  SeSACWeek2
//
//  Created by 최형민 on 2022/07/15.
//

import UIKit

class TransitionSecondViewController: UIViewController {

    @IBOutlet weak var mottoTextView: UITextView!
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TransitionSecondViewController", #function)
        
        // 가져오기
        // 텍스트가 없으면 앱이 꺼질 수도 있기 때문에
        // 없는 경우 placeholder 하나 ㄴ설정
        if UserDefaults.standard.string(forKey: "nickname") != nil {
            UserDefaults.standard.string(forKey: "nickname")
        } else {
            mottoTextView.text = "고래밥"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TransitionSecondViewController", #function)
    }
    
    // 데이터가 영구적으로 저장됨
    // UserDefault 사물함에 저장이 되기 때문에 값 유지
    // 앱 제거를 해야 삭제
    @IBAction func emotionButtonClicked(_ sender: Any) {
        // 기존 데이터 값 가져오기
        let currentValue = UserDefaults.standard.integer(forKey: "happyEmotion")
        
        // 감정 + 1
        let updateValue = currentValue + 1
        
        // 새로운 값 저장
        UserDefaults.standard.set(updateValue, forKey: "happyEmotion")
        
        // 레이블에 새로운 내용 보여주기
        countLabel.text = "\(UserDefaults.standard.integer(forKey: "happyEmotion"))"
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("TransitionSecondViewController", #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("TransitionSecondViewController", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("TransitionSecondViewController", #function)
    }
    
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
        print("저장되었습니다")
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
