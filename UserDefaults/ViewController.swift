//
//  ViewController.swift
//  UserDefaults
//
//  Created by 丹尾 沙也花 on 2018/05/22.
//  Copyright © 2018年 litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var TextField1 : UITextField!
    @IBOutlet var TextField2 : UITextField!
    
    var Dictionary : [String:String] = [:]
    let saveData = UserDefaults.standard
    //保存メゾット
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if saveData.dictionary(forKey: "word") != nil {
            Dictionary = saveData.dictionary(forKey: "word")as! Dictionary<String,String>
            
            TextField1.text = Dictionary["furu"]
            TextField2.text = Dictionary["vege"]
            
        }// Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func save(){
        
        Dictionary["furu"] = TextField1.text
        Dictionary["vege"] = TextField2.text
        
        saveData.set(Dictionary, forKey: "word")
     }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
