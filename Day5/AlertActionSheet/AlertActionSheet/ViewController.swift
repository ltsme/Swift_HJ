//
//  ViewController.swift
//  AlertActionSheet
//
//  Created by HyeonJoonYang on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAlert(_ sender: UIButton) {
        
        //Controller 초기화
        let testAlert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        // AlertAction
        let actionDefault = UIAlertAction(title: "Action Default", style: .default, handler: nil)
        
        let actionDestructive = UIAlertAction(title: "Action Destructive", style: .default , handler:
            {ACTION in
            print("Destructive action called")
        })
        
        let actionCancel = UIAlertAction(title: "Action Cancel", style: .cancel, handler: nil)
        
        // Controller와 Action 결합
        testAlert.addAction(actionDefault)
        testAlert.addAction(actionDestructive)
        testAlert.addAction(actionCancel)
        
        // 화면 띄우기
        present(testAlert, animated: true, completion: nil)
    }
    
    @IBAction func btnActionSheet(_ sender: UIButton) {
        
        //Controller 초기화
        let testAlert = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        
        // AlertAction
        let actionDefault = UIAlertAction(title: "Action Default", style: .default, handler: nil)
        
        let actionDestructive = UIAlertAction(title: "Action Destructive", style: .default , handler:
            {ACTION in
            print("Destructive action called")
        })
        
        let actionCancel = UIAlertAction(title: "Action Cancel", style: .cancel, handler: nil)
        
        // Controller와 Action 결합
        testAlert.addAction(actionDefault)
        testAlert.addAction(actionDestructive)
        testAlert.addAction(actionCancel)
        
        // 화면 띄우기
        present(testAlert, animated: true, completion: nil)

    }
    
}

