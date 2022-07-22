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

    // 1. 값 전달 - 데이터를 받을 공간(프로퍼티) 생성
    var movieTitle: Movie? // 따로따로 프로퍼티 생성하지 않고 하나의 구조체 전체를 전달 받는 이유?
    // 1. 귀찮아서 2. 수정할 때 하나하나 다 바꿔야해서 번거로움
    
    let imageURL = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA1MDNfMjEy%2FMDAxNjUxNTM0MzM1NzEw.lyWEtzsHMuc34Trm9wER2yufxNp6JTyA1Zz02HgYaf4g.k7p0kBS1M_PhPlcQBYJ-y6bBRN_YiCeZNXimt1g1EtYg.JPEG.pieceofmarch%2FIMG_6006.jpg&type=sc960_832"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 3. 값 전달 - 프로퍼티 값을 뷰에 표현
        title = movieTitle?.title

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
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendCollectionViewCell", for: indexPath) as? RecommendCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.posterImageView.backgroundColor = .orange
        
        let url = URL(string: imageURL)
        cell.posterImageView.kf.setImage(with: url)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        view.makeToast("\(indexPath.item)번째 셀을 선택했습니다")
//        view.makeToast("\(indexPath.item)번째 셀을 선택했습니다", duration: 1, position: .center)
        
        self.navigationController?.popViewController(animated: true)
    }

}
