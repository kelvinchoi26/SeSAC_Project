//
//  NewViewController.swift
//  Baemin
//
//  Created by 최형민 on 2022/07/17.
//

import UIKit

class NewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        designNavigationBar()
        // Do any additional setup after loading the view.
    }
    
    func designNavigationBar() {
        self.navigationItem.title = "회사"
        let searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: 280, height: 0))
        searchBar.placeholder = "포케? 돈까스? 커리?"
        self.navigationItem.titleView = searchBar
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
