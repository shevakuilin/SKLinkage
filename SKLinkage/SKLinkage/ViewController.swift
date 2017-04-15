//
//  ViewController.swift
//  SKLinkage
//
//  Created by shevchenko on 17/4/15.
//  Copyright © 2017年 shevchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let checkButton = UIButton.init()
        self.view.addSubview(checkButton)
        checkButton.setTitle("走势图", for: UIControlState.normal)
        checkButton.setTitleColor(UIColor.red, for: UIControlState.normal)
        checkButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        checkButton.addTarget(self, action: #selector(check), for: UIControlEvents.touchUpInside)
        checkButton.snp.makeConstraints { (make) in
            make.center.equalTo(self.view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func check() {
        let movements = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "movements")
        self.navigationController?.pushViewController(movements, animated: true)
    }


}

