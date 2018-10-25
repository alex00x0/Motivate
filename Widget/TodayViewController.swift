//
//  TodayViewController.swift
//  Widget
//
//  Created by Alexander Niehaus on 10/25/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit
import NotificationCenter
import SwiftyJSON

class TodayViewController: UIViewController, NCWidgetProviding {
    
    let randomIndex = Int(arc4random_uniform(UInt32(101)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        
        guard let jsonURL = Bundle.main.url(forResource: "quotes", withExtension: "json") else {
            print("Could not find Random-User.json!")
            return
        }
        let jsonData = try! Data(contentsOf: jsonURL)
        
        let userData = try! JSON(data: jsonData)
        
        quoteLabel.text = userData["quotes"][shuffle()]["quote"].stringValue
        authorLabel.text = userData["quotes"][shuffle()]["author"].stringValue
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
//        completionHandler(NCUpdateResult.newData) 
    }
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    func shuffle() -> Int{
        let x = Int.random(in: 0 ..< 101)
        
        return x
        
    }
    
    @IBAction func refreshQuote(_ sender: Any) {
        shuffle()
    }
    
}
