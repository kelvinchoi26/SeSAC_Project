//
//  RecommendCollectionViewController.swift
//  TrendMedia
//
//  Created by 최형민 on 2022/07/20.
//

import UIKit
import Toast
import Kingfisher

class RecommendCollectionViewController: UICollectionViewController {

    let imageURL = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA1MDNfMjEy%2FMDAxNjUxNTM0MzM1NzEw.lyWEtzsHMuc34Trm9wER2yufxNp6JTyA1Zz02HgYaf4g.k7p0kBS1M_PhPlcQBYJ-y6bBRN_YiCeZNXimt1g1EtYg.JPEG.pieceofmarch%2FIMG_6006.jpg&type=sc960_832"
    override func viewDidLoad() {
        super.viewDidLoad()

        // 컬렉션뷰의 셀 크기, 셀 사이 간격 등 설정
        let layout = UICollectionViewFlowLayout()
        // FlowLayout!
        let spacing: CGFloat = 8
        let width = UIScreen.main.bounds.width - (spacing * 4)
        // 여백없이 디바이스를 3으로 나눔
        layout.itemSize = CGSize(width: width / 3, height: (width / 3) * 1.2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCollectionViewCell", for: indexPath) as! RecommendCollectionViewCell
        cell.posterImageView.backgroundColor = .orange
        
        let url = URL(string: imageURL)
        cell.posterImageView.kf.setImage(with: url)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        view.makeToast("\(indexPath.item)번째 셀을 선택했습니다")
//        view.makeToast("\(indexPath.item)번째 셀을 선택했습니다", duration: 1, position: .center)
    }

}
