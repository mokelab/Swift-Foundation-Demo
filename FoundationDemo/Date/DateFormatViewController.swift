//
//  DateFormatViewController.swift
//  FoundationDemo
//
//  Created by fkm on 2016/09/18.
//  Copyright © 2016年 mokelab. All rights reserved.
//

import Foundation
import UIKit

class DateFormatViewController : UIViewController {
    @IBOutlet weak var text : UILabel!
    @IBOutlet weak var textLocale : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let today = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        self.text.text = formatter.string(from: today)
        
        formatter.locale = Locale(identifier: "en_US_POSIX")
        self.textLocale.text = formatter.string(from: today)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
