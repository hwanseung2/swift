//
//  ViewController.swift
//  SingleWebview
//
//  Created by 유환승 on 2021/03/21.
//

import UIKit
import WebKit
class ViewController: UIViewController {

    @IBOutlet weak var WebViewMain: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 1. url string을 찾는다.
        // 2. url -> request로 바꾼다!!
        // 3. request를 urlrequest에 로드
        
        let urlstring = "https://www.google.com"
        if let url = URL(string: urlstring) { //unwrapping 과정!! optional binding!!!
            let urlreq = URLRequest(url: url)
            WebViewMain.load(urlreq)
        }
        
        //var abc = "1" // 값이 변할 수 있다.
        //var abc1 : String? = nil // 값이 비어있을 수 있다. 라고선언하기 -> unwrapping 과정을 if문을 통해서 벗겨진 걸 제대로 쓸 수 있다.
        //강제로 벗기는 방법
        //let aaa = abc1! // 값이 무조건 들어가있으니까 믿고 unwrapping을 해라!! but 이 방법은 에러가 날 수 있다.
        //var abc2 = "2"
        
    }


}

