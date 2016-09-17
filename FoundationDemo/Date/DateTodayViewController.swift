//
//  DateTodayViewController.swift
//  FoundationDemo
//
//  Created by fkm on 2016/09/18.
//  Copyright © 2016年 mokelab. All rights reserved.
//

import Foundation
import UIKit

class DateTodayViewController : UIViewController {
    
    @IBOutlet weak var text : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let today = Date()
        let unixMs = UInt64(today.timeIntervalSince1970 * 1000)
        self.text.text = "\(unixMs)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
