//
//  ViewController.swift
//  TabBar
//
//  Created by HyeonJoonYang on 2021/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func GoEmoji(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func goPicker(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
}

