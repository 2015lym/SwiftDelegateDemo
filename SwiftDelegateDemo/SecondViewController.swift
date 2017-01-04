//
//  SecondViewController.swift
//  UbiTalkSwift
//
//  Created by Lym on 2017/1/4.
//  Copyright © 2017年 Lym. All rights reserved.
//

import UIKit

protocol TestDelegate{
    
    func getValue(value:String)
    
}

class SecondViewController: UIViewController {

    var delegate : TestDelegate?
    
    @IBOutlet weak var contentField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func popToFirstViewController(_ sender: Any) {
        delegate?.getValue(value: contentField.text!)
        print("传值成功，请返回First查看")
    }


}
