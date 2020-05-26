//
//  CTMediator_PersonPrefence.swift
//  CTMediator
//
//  Created by zhx on 2020/5/26.
//

import Foundation
import CTMediator


public extension CTMediator {

    func personPreferenceWith(remind: String, block: @escaping (Bool) -> Void) -> UIViewController {

        var dict: [String: Any] = [:]
        dict["remind"] = remind
        dict["block"] = block

        return self.performTarget("PersonPrefenceViewController", action: "PersonPrefenceViewController", params: dict, shouldCacheTarget: false) as! UIViewController

    }
}
