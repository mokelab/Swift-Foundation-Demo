//
//  UserDefaultsViewController.swift
//  FoundationDemo
//
//  Created by fkm on 2016/09/18.
//  Copyright © 2016年 mokelab. All rights reserved.
//

import UIKit

class UserDefaultsViewController: UIViewController {
    
    @IBOutlet weak var nameText : UITextField!
    @IBOutlet weak var ageText : UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - UI event
    @IBAction func closeKeyboard(sender : AnyObject) {
        if self.nameText.isFirstResponder {
            self.nameText.resignFirstResponder()
            return
        }
        if self.ageText.isFirstResponder {
            self.ageText.resignFirstResponder()
            return
        }
    }
    
    @IBAction func saveClicked(sender : AnyObject) {
        let name = self.nameText.text!
        let age = Int(self.ageText.text!)
        
        let defaults = UserDefaults.standard
        defaults.set(name, forKey: "name")
        defaults.set(age, forKey: "age")
        defaults.synchronize()
        
        // clear
        self.nameText.text = ""
        self.ageText.text = ""
        
        self.closeKeyboard(sender: sender)
    }

    @IBAction func loadClicked(sender : AnyObject) {
        let defaults = UserDefaults.standard
        let name = defaults.string(forKey: "name")
        let age = defaults.integer(forKey: "age")
        
        self.nameText.text = name
        self.ageText.text = "\(age)"
        
        self.closeKeyboard(sender: sender)
    }

}

