//
//  ViewController.swift
//  Navigation
//
//  Created by HyeonJoonYang on 2021/07/22.
//

import UIKit

class ViewController: UIViewController {
        
    // 그림 연결
    @IBOutlet weak var imgView: UIImageView!
    
    // 전역변수 선언
    let imgOn = UIImage(named: "On.png")
    let imgOff = UIImage(named: "Off.png")
    let imgOnColor = UIImage(named: "On_Color.png")
    
    // 전구가 켜졌는지 여부
    var isOn = true
    var isColor = false
    
    // 첫 화면
    override func viewDidLoad() {
        super.viewDidLoad()
    
        imgView.image = imgOn // 켜진 전구 등장
    }

    /*
        EditViewController(= Class)의 instance를 만들어서 연결해주는 것
     
         *** 중요 ***
        let editViewController = segue.destination as! EditViewController
     
        Class 즉, ViewController가 여러 개일수록 segue는 1개,
        " let editViewController = segue.destination as! EditViewController " 얘를 여러 개 만들어준다.
     */
    
    // for = 사용자가 보는 거고 segue : 내부적으로 쓰는 거(코드 짤 떄)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // 내가 쓸 거라고 정의
        let editViewController = segue.destination as! EditViewController // 자바로 이야기하면 instance 생성한 것임
       
        
        editViewController.delegate = self
        // prepare를 통해 주고 받을 때, delegate에게 권한을 넘겨준다.
        editViewController.isOn = isOn
        
    }


} // ViewController



extension ViewController: EditDelegate{

    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool, isColor: Bool) {
        if isOn{
            if isColor{
                imgView.image = imgOnColor
                self.isOn = true
                self.isColor = true
            }else{
                imgView.image = imgOn
                self.isOn = true
                self.isColor = false
            }
        }
        else{
            imgView.image = imgOff
            self.isOn = false
        }
    }
}
