//
//  ViewController.swift
//  Movie
//
//  Created by 최형민 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {
    let imageArray = ["어벤져스엔드게임","7번방의선물","겨울왕국2","괴물"]

    @IBOutlet weak var BackgroundImage: UIImageView!
    @IBOutlet weak var FirstPoster: UIButton!
    @IBOutlet weak var SecondPoster: UIButton!
    @IBOutlet weak var ThirdPoster: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        FirstPoster.layer.cornerRadius = 50
        SecondPoster.layer.cornerRadius = 50
        ThirdPoster.layer.cornerRadius = 50
        
        FirstPoster.layer.borderColor = UIColor.green.cgColor
        SecondPoster.layer.borderColor = UIColor.green.cgColor
        ThirdPoster.layer.borderColor = UIColor.green.cgColor
        
        FirstPoster.layer.borderWidth = 2
        SecondPoster.layer.borderWidth = 2
        ThirdPoster.layer.borderWidth = 2
    }

    @IBAction func PlayButtonPressed(_ sender: Any) {
        BackgroundImage.image = UIImage(named: imageArray[Int.random(in: 0...3)])
    }
}

