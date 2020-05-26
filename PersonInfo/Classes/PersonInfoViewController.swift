//
//  PersonInfoViewController.swift
//  CTMediator
//
//  Created by zhx on 2020/5/26.
//

import UIKit
import CTMediator
import PersonPrefenceCatogery

class PersonInfoViewController: UIViewController {

    public var name: String = ""
    public var age: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(disLabel)
        self.view.addSubview(btn)

        disLabel.text = "\(name)今年\(age),很帅气"

    }

    @objc func clickAction() {

        let vc = CTMediator.sharedInstance().personPreferenceWith(remind: "希望您能喜欢我") { (isLike) in
            if isLike {
                self.btn.setTitle("喜欢我", for: .normal)
            }else {
                self.btn.setTitle("不喜欢我", for: .normal)
            }
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }

    lazy public var disLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 32, y: 100, width: 320, height: 60))
        label.textColor = .black
        label.textAlignment = .center
        label.backgroundColor = .yellow
        return label
    }()

    lazy public var btn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 100, y: 200, width: 60, height: 30)
        btn.setTitle("打分", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .yellow
        btn.addTarget(self, action: #selector(clickAction), for: .touchUpInside)
        return btn
    }()

}
