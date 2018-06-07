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
    
    var wordarray: [Dictionary<String,String>] = []
    
    var saveData = UserDefaults.standard
    //保存メゾット

    override func viewDidLoad() {
        super.viewDidLoad()
        
        TextField1.delegate = self as? UITextFieldDelegate
        TextField2.delegate = self as? UITextFieldDelegate
        
        if saveData.array(forKey: "word") != nil{
            wordarray = saveData.array(forKey: "word") as! [Dictionary<String,String>]
            
            TextField1.text = ""
            TextField2.text = ""
            
        }// Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func save(){
        let wordDictionary = ["fruit": TextField1.text!, "vege": TextField2.text!]
        saveData.set(wordDictionary, forKey: "word")
        //saveを押した時の処理
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
