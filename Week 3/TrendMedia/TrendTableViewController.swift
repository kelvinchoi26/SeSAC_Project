//
//  TrendTableViewController.swift
//  TrendMedia
//
//  Created by 최형민 on 2022/07/21.
//

import UIKit

class TrendTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func movieButtonClicked(_ sender: UIButton) {
        // 영화버튼 클릭 > BucketListTableViewController Present
        // 화면 전환: 1. 스토리보드 파일 2. 스토리보드 내에 뷰컨트롤러 3. 화면 전환
        
        // 1.
        let sb = UIStoryboard(name: "Trend", bundle: nil)
        // 2.
        let vc = sb.instantiateViewController(withIdentifier: BucketListTableViewController.identifier)
        // 3.
        self.present(vc, animated: true)
    }
    
    @IBAction func dramaButtonClicked(_ sender: UIButton) {
        // 1.
        let sb = UIStoryboard(name: "Trend", bundle: nil)
        // 2.
        let vc = sb.instantiateViewController(withIdentifier: BucketListTableViewController.identifier)
        // 2.5. present시 화면 전환 방식 설정 (모달이 아니라 풀스크린)
        vc.modalPresentationStyle = .fullScreen
        // 3.
        self.present(vc, animated: true)
    }
    
    @IBAction func bookButtonClicked(_ sender: UIButton) {
        // 1.
        let sb = UIStoryboard(name: "Trend", bundle: nil)
        // 2.
        let vc = sb.instantiateViewController(withIdentifier: BucketListTableViewController.identifier)
        // 2.5. (네비게이션 포함 풀스크린)
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        // 3.
        self.present(nav, animated: true)
    }
}
