//
//  BookCollectionViewCell.swift
//  BookManage
//
//  Created by 최형민 on 2022/07/20.
//

import UIKit

class BookCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var backgroundColorView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var ratingLabel: UILabel!
    
    func configureCell(data: Movie) {
        titleLabel.font = .boldSystemFont(ofSize: 15)
        titleLabel.text = data.title
        titleLabel.textColor = .white
        ratingLabel.font = .systemFont(ofSize: 13)
        ratingLabel.text = "\(data.rate)"
        ratingLabel.textColor = .white
    }
}
