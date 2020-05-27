//
//  Target_PersonInfoViewController.swift
//  CTMediator
//
//  Created by zhx on 2020/5/26.
//

import UIKit

@objc class Target_PersonInfoViewController: NSObject {


    @objc func Action_PersonInfoViewController(_ params:NSDictionary) -> UIViewController{

        let perInfo = PersonInfoViewController()
        if let name = params["name"] as? String {
            perInfo.name = name
        }
        if let age = params["age"] as? Int {
            perInfo.age = age
        }
        return perInfo
    }
}
