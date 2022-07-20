//
//  BookCollectionViewController.swift
//  BookManage
//
//  Created by 최형민 on 2022/07/20.
//

import UIKit
import Kingfisher

private let reuseIdentifier = "Cell"

class BookCollectionViewController: UICollectionViewController {
    
    let imageURL = "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimage.aladin.co.kr%2Fproduct%2F631%2F77%2Fletslook%2F8988399617_fl.jpg%3FRS%3D0&type=sc960_832"
    
    var movieList = MovieInfo()
    
    let colorArray = [UIColor.orange, UIColor.black, UIColor.blue, UIColor.lightGray, UIColor.blue, UIColor.brown]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 컬렉션뷰의 셀 크기, 셀 사이 간격 등 설정
        let layout = UICollectionViewFlowLayout()
        // FlowLayout!
        let spacing: CGFloat = 8
        let width = UIScreen.main.bounds.width - (spacing * 3)
        
        layout.itemSize = CGSize(width: width / 2, height: width / 2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        
        collectionView.collectionViewLayout = layout
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return movieList.movie.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionViewCell", for: indexPath) as! BookCollectionViewCell
    
        let data = movieList.movie[indexPath.row]
        cell.configureCell(data: data)
        
        let url = URL(string:imageURL)
        cell.posterImage.kf.setImage(with: url)
        
        cell.backgroundColorView.backgroundColor = colorArray[Int.random(in: 0...5)]
        cell.layer.cornerRadius = 5
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
