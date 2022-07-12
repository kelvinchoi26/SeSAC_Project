//
//  ViewController.swift
//  SeSACWeek2
//
//  Created by 최형민 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orangeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnClicked(_ sender: UIButton) {
        showAlertController()
    }
    func showAlertController() {
        // 1. 흰 바탕
        let alert = UIAlertController(title: "타이틀", message: "여기는 메시지가 들어갑니다", preferredStyle: .actionSheet)
        
        // 2. 버튼
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "취소버튼입니다", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "새 창으로 열기", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사하기", style: .default, handler: nil)
        
        // 3. 1+2
        alert.addAction(copy)
        alert.addAction(cancel)
        alert.addAction(web)
        alert.addAction(ok)
        
        // 4. present
        present(alert, animated: true, completion: nil)
    }
}

