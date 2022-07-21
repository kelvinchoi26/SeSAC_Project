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

        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(searchButtonClicked))
        
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
                                                            
    // objc로 구현된 메서드일 때 @ 사용해줘야함
    @objc func searchButtonClicked() {
        let sb = UIStoryboard(name: "Search", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "SearchViewController") as! SearchViewController
        // 네비게이션 포함 풀스크린
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
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
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Detail", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
