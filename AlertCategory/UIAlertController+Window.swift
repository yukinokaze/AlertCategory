//
//  UIAlertController+Window.swift
//  AlertCategory
//
//  Created by yukinokaze on 2018/11/12.
//  Copyright © 2018年 com.github.yukinokaze.alertcategory. All rights reserved.
//

import Foundation
import UIKit

var StoredPropertyKey: UInt8 = 0

extension UIAlertController {
    
    public func show(){
        self.show(animeted:true)
    }
    
    public func show(animeted:Bool){
        self.alertWindow = UIWindow.init(frame: UIScreen.main.bounds)
        self.alertWindow?.rootViewController = UIViewController()
        let topWindow = UIApplication.shared.windows.last
        self.alertWindow?.windowLevel = (topWindow?.windowLevel)! + 1
        self.alertWindow?.makeKeyAndVisible()
        self.alertWindow?.rootViewController?.present(self,animated:animeted,completion:nil)
    }

    override open func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.alertWindow?.isHidden = true
        self.alertWindow = nil
    }
    var alertWindow: UIWindow? {
        get {
            guard let object = objc_getAssociatedObject(self, &StoredPropertyKey) as? UIWindow else {
                return nil
            }
            return object
        }
        set {
            objc_setAssociatedObject(self, &StoredPropertyKey, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
    }

    
    
}
