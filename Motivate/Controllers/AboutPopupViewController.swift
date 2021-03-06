//
//  AboutPopupViewController.swift
//  Motivate
//
//  Created by Alexander Niehaus on 8/7/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import UIKit

class AboutPopupViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popUpView.layer.cornerRadius = 15
        popUpView.layer.masksToBounds = true
        
    }
    
    @IBOutlet weak var popUpView: UIView!
    
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
