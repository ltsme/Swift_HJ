//
//  ViewController.swift
//  Hybrid
//
//  Created by HyeonJoonYang on 2021/07/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var tfUrl: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myWebView.navigationDelegate = self
        
        let tempSite = "https://www.naver.com"
        loadWebpage(url: tempSite)
    }
    
    func loadWebpage(url: String) {
        let myUrl = URL(string: url) // URL 타입으로 변경
        let myRequest = URLRequest(url: myUrl!) //Url은 Optional
        myWebView.load(myRequest)
    }
 
    @IBAction func btnGo(_ sender: UIButton) {
        
        // http가 있는지, 없는지
        let myUrl = checkUrl(tfUrl.text!)
        tfUrl.text = ""
        loadWebpage(url: myUrl)
    }
    
    func checkUrl(_ url: String) -> String {
        //url 부분은 보여주rl 싫다 _
        var strUrl = url
        let flag = strUrl.hasPrefix("http://")
    
        // 앞에서부터 글자가 "" 되어있는지
        
        if !flag{
            strUrl += "http://"
        }
        return strUrl
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        myWebView.stopLoading()
    }
    
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
    
    @IBAction func btnGoback(_ sender: UIBarButtonItem) {
        myWebView.goBack()
    }
    @IBAction func btnGoforward(_ sender: UIBarButtonItem) {
        myWebView.goForward()
    }
}

// extension
extension ViewController: WKNavigationDelegate{
    
    // Indicator 시작
    // didCommit을 찾는다
    
    func webView(_ webView: WKWebView, didComiit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating() // 빙글 빙글
        myActivityIndicator.isHidden = false // 화면에 보이게
    }
    
    // Indicator 종료
    // didFinish
    func webView(_ webView: WKWebView, didFinish navagation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    
    //Error 발생시
    func webView(_ webView: WKWebView, didFall navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
}// extension NavigationDelegate



