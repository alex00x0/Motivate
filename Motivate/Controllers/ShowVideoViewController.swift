//
//  showVideoViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 8/1/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit
import YouTubePlayer

class ShowvideoViewController: UIViewController {
    
    // MARK: - Properties
    var video: VideosInCategories?
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var videoPopUp: YouTubePlayerView!
    @IBOutlet weak var showVideoYoutubePlayerView: YouTubePlayerView!
    
    @IBAction func closePopup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    // MARK: - View Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let videoURL = URL(string: (video?.link)!) else { return }
        showVideoYoutubePlayerView.loadVideoURL(videoURL as URL)
        showVideoYoutubePlayerView.clear()
        
        videoPopUp.layer.cornerRadius = 15
        videoPopUp.layer.masksToBounds = true
        
        showVideoYoutubePlayerView.clear()
        
    }

}

