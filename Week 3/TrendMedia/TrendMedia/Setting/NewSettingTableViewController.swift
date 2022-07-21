//
//  NewSettingTableViewController.swift
//  TrendMedia
//
//  Created by 최형민 on 2022/07/19.
//

import UIKit

// CaseIterableL 프로토콜, 배열처럼 열거형을 활용할 수 있는 특성
enum SettingOptions: Int, CaseIterable {
    case total, personal, others // 섹션
    
    var sectionTitle: String {
        switch self {
        case .total:
            return "전체 설정"
        case .personal:
            return "개인 설정"
        case .others:
            return "기타"
        }
    }
    
    var rowTitle: [String] {
        switch self {
        case .total:
            return ["공지사항", "실험실", "버전 정보"]
        case .personal:
            return ["개인/보안", "알림", "채팅", "멀티프로필"]
        case .others:
            return ["고객센터/도움말"]
        }
    }
}

class NewSettingTableViewController: UITableViewController {

    let sectionTitle = ["전체 설정", "개인 설정", "기타"]
    let firstSection = ["공지사항", "실험실", "버전 정보"]
    let secondSection = ["개인/보안", "알림", "채팅", "멀티프로필"]
    let thirdSection = ["고객센터/도움말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // 섹션 타이틀
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return SettingOptions.allCases[section].sectionTitle
//        return sectionTitle[section]
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // CaseIterable 적용해야 사용 가능
        return SettingOptions.allCases.count
//        return sectionTitle.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingOptions.allCases[section].rowTitle.count
        // #warning Incomplete implementation, return the number of rows
//        if section == 0 {
//            return firstSection.count
//        } else if section == 1 {
//            return secondSection.count
//        } else {
//            return thirdSection.count
//        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        cell.textLabel?.text = SettingOptions.allCases[indexPath.section].rowTitle[indexPath.row]
        
        return cell
//        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
//
//        if indexPath.section == 0 {
//            cell.textLabel?.text = firstSection[indexPath.row]
//        } else if indexPath.section == 1 {
//            cell.textLabel?.text = secondSection[indexPath.row]
//        } else {
//            cell.textLabel?.text = secondSection[indexPath.row]
//        }
//
//        return cell
    }
}
