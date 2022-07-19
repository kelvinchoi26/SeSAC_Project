//
//  SettingTableViewController.swift
//  TrendMedia
//
//  Created by 최형민 on 2022/07/19.
//

import UIKit

class SettingTableViewController: UITableViewController {

    var birthdayFriends = ["뽀로로", "신데렐라", "올라프", "고래밥", "모구리", "스노기"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 80
    }

    // 섹션의 갯수(옵션)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "생일인 친구"
        } else if section == 1 {
            return "즐겨찾기"
        } else if section == 2 {
            return "친구 140명"
        } else {
            return "섹션"
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "푸터"
    }
    // 1. 셀의 갯수(필수)
    // ex. 친구 100명 > 셀 100개, 3000ㄱ명 > 셀 3000개
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return birthdayFriends.count
        } else if section == 1 {
            return 2
        } else if section == 2{
            return 10
        } else {
            return 0
        }
    }
    
    // 2. 셀의 디자인과 데이터(필수), cellForRowat
    // ex. 카톡 프로필 사진, 상태 메시지 등
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("cellforrowat", indexPath)
        
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "rightDetailCell")!
            cell.textLabel?.text = "2번 인덱스 세션의 텍스트"
            cell.textLabel?.textColor = .brown
            cell.textLabel?.font = .boldSystemFont(ofSize: 15)
            cell.detailTextLabel?.text = "디테일 레이블"
            
            // indexPath.row % 2 == 0, 1
            
            if indexPath.row % 2 == 0 {
                cell.imageView?.image = UIImage(systemName: "star")
                cell.backgroundColor = .lightGray
            } else {
                cell.imageView?.image = UIImage(systemName: "star.fill")
                cell.backgroundColor = .white
            }
            
            // 삼항연산자 활용
            
//            cell.imageView?.image = indexPath.row % 2 == 0 ? UIImage(systemName: "star") : UIImage(systemName: "star.fill")
//            cell.backgroundColor = indexPath.row % 2 == 0 ? .lightGray : .white
            
            return cell
        } else {
            // * 100을 해주는 메서드
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
            
            if indexPath.section == 0 {
                cell.textLabel?.text = birthdayFriends[indexPath.row]
                cell.textLabel?.textColor = .systemMint
                cell.textLabel?.font = .boldSystemFont(ofSize: 20)
            } else if indexPath.section == 1 {
                cell.textLabel?.text = "1번 인덱스 텍스트"
                cell.textLabel?.textColor = .systemPink
                cell.textLabel?.font = .boldSystemFont(ofSize: 25)
            } else if indexPath.section == 2 {
                cell.textLabel?.text = "2번 인덱스 세션의 텍스트"
                cell.textLabel?.textColor = .brown
                cell.textLabel?.font = .boldSystemFont(ofSize: 15)
            }
            return cell
        }
    }
    
    // 셀의 높이(옵션, 빈도 높은) (feat. tableView.rowHeight)
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        // if indexPath = [0, 0]
        // if indexPath.section == 0 && indexPath.row == 0
        // 특정 row 높이 변경할 때 둘 다 가능
        
        return 44
    }
}
