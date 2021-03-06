//
//  VideosInCategoriesTableViewCell.swift
//  Motivate
//
//  Created by Alexander Niehaus on 7/30/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit
import YouTubePlayer


class VideosInCategoriesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var videoPreviewImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    @IBOutlet weak var durationLabel: UILabel!
    
    @IBOutlet weak var starButton: UIButton!
    
    var isActive:Bool = false
    
    var link: VideosInLifeAreasViewController?

    
    @IBAction func starButtonTapped(_ sender: Any) {
        if isActive {
            isActive = false
            starButton.setImage(UIImage(named: "star(2)"), for: .normal)

        } else {
            isActive = true
            starButton.setImage(UIImage(named: "star(3)"), for: .normal)

        }
    }
    
}
