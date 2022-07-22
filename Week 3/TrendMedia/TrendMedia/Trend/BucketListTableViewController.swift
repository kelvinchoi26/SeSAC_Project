//
//  BucketListTableViewController.swift
//  TrendMedia
//
//  Created by 최형민 on 2022/07/19.
//

import UIKit

class BucketListTableViewController: UITableViewController {
    
    static let identifier = "BucketListTableViewController"
    
    // 1. 값 전달 받기 위한 공간
    var textfieldPlaceholder = ""

    @IBOutlet weak var userTextField: UITextField!
    
    var list = ["범죄도시2", "토르", "탑컨"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 3. 값 전달
        userTextField.text = ""
        userTextField.placeholder = textfieldPlaceholder

        navigationItem.title = "버킷리스트"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked))
        
        tableView.rowHeight = 80
        
        list.append("마녀")
    }

    // objc로 구현된 메서드일 때 @ 사용해줘야함
    @objc func closeButtonClicked() {
        self.dismiss(animated: true)
    }
    
    @IBAction func enterKeyClicked(_ sender: UITextField) {
        // case 2. if let
        if let value = sender.text?.trimmingCharacters(in: .whitespacesAndNewlines), !value.isEmpty, (2...6).contains(value.count) {
            list.append(value)
        } else {
            // 토스트 메시지 띄우기
        }
        
        // case 3. guard 구문
//        guard let value = sender.text?.trimmingCharacters(in: .whitespacesAndNewlines), !value.isEmpty, (2...6).contains(value.count) else {
//            // 토스트 메시지
//        }
//
//        list.append(value)
        
        // case 1.
        // list.append(sender.text!
        // 데이터가 바뀌는 순간마다 테이블뷰 갱신
        // tableView.reloadData() //중요!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BucketListTableViewCell", for: indexPath) as! BucketListTableViewCell // as? 타입 캐스팅
        // 타입 캐스팅 해야지 밑에 bucketListLabel 같은 BucketListTableViewCell의 속성들을 불러올 수 있음

        cell.bucketListLabel.text = list[indexPath.row]
        cell.bucketListLabel.font = .boldSystemFont(ofSize: 10)
        
        return cell
    }
    
    // 우측 스와이프 디폴트 기능 : commit editingStyle
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //배열 삭제 후 테이블뷰 갱신
            list.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
