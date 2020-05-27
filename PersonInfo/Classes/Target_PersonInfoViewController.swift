//
//  Target_PersonInfoViewController.swift
//  CTMediator
//
//  Created by zhx on 2020/5/26.
//

import UIKit

public class Target_PersonInfoViewController: NSObject {


    public func Action_PersonInfoViewController(param: [String: Any]) -> UIViewController{

        let perInfo = PersonInfoViewController()
        perInfo.name = param["name"] as! String
        perInfo.age = param["age"] as! Int
        return perInfo
    }
}
