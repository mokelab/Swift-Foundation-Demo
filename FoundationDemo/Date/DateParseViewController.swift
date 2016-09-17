//
//  DateParseViewController.swift
//  FoundationDemo
//
//  Created by fkm on 2016/09/18.
//  Copyright © 2016年 mokelab. All rights reserved.
//

import Foundation
import UIKit

class DateParseViewController : UIViewController {
    
    @IBOutlet weak var text : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        // Dateに変換。だめだったらnil
        let date = formatter.date(from: "2016/09/18 18:00:00")
        self.text.text = "\(date!)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
