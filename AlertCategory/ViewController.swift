//
//  ViewController.swift
//  AlertCategory
//
//  Created by ysasahara on 2018/11/12.
//  Copyright © 2018年 com.github.yukinokaze.alertcategory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func alertAction () {
        let alert = UIAlertController(title:"alertTitle",
                                      message: "alertMessage",
                                      preferredStyle: .alert)
        //Cancel 一つだけしか指定できない
        let cancelAction:UIAlertAction = UIAlertAction(title: "Cancel",
                                                       style: .cancel,
                                                       handler:{
                                                        (action:UIAlertAction!) -> Void in
                                                        print("Cancel")
        })
        
        //Default 複数指定可
        let defaultAction:UIAlertAction = UIAlertAction(title: "Default",
                                                        style: .default,
                                                        handler:{
                                                            (action:UIAlertAction!) -> Void in
                                                            print("Default")
        })
        
        
        //Destructive 複数指定可
        let destructiveAction:UIAlertAction = UIAlertAction(title: "Destructive",
                                                            style: .destructive,
                                                            handler:{
                                                                (action:UIAlertAction!) -> Void in
                                                                print("Destructive")
        })
        
        
        alert.addAction(cancelAction)
        alert.addAction(defaultAction)
        alert.addAction(destructiveAction)
        alert.show(animeted: true)
    }


}

