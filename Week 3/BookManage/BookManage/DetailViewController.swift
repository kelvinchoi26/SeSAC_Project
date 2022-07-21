//
//  DetailViewController.swift
//  BookManage
//
//  Created by 최형민 on 2022/07/22.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func detailButtonClicked(_ sender: UIButton) {
        let sb = UIStoryboard(name: "WebView", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "WebViewViewController") as! WebViewViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
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
