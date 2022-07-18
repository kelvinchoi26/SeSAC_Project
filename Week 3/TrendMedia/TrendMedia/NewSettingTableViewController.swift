//
//  NewSettingTableViewController.swift
//  TrendMedia
//
//  Created by 최형민 on 2022/07/19.
//

import UIKit

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
        return sectionTitle[section]
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sectionTitle.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return firstSection.count
        } else if section == 1 {
            return secondSection.count
        } else {
            return thirdSection.count
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        if indexPath.section == 0 {
            cell.textLabel?.text = firstSection[indexPath.row]
        } else if indexPath.section == 1 {
            cell.textLabel?.text = secondSection[indexPath.row]
        } else {
            cell.textLabel?.text = secondSection[indexPath.row]
        }
        
        return cell
    }
}
