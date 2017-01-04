//
//  FirstViewController.swift
//  UbiTalkSwift
//
//  Created by Lym on 2017/1/4.
//  Copyright © 2017年 Lym. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,TestDelegate {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func pushToSecondViewController(_ sender: UIButton) {
        let secondVC = SecondViewController()
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    func getValue(value: String) {
        textLabel.text = value
    }

}
