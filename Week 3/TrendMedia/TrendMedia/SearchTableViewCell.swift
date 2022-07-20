//
//  SearchTableViewCell.swift
//  TrendMedia
//
//  Created by 최형민 on 2022/07/20.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var posterImage: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!

    func configureCell(data: Movie) {
        movieNameLabel.font = .boldSystemFont(ofSize: 15)
        movieNameLabel.text = data.title
        releaseDateLabel.text = "\(data.releaseDate) | \(data.runtime)분 | \(data.rate)점"
        summaryLabel.text = data.overview
        summaryLabel.numberOfLines = 0
    }
}
